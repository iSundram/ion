#!/usr/bin/env python3
"""
ionCube Decoder - Decodes ionCube encoded PHP files
Based on reverse engineering of ionCube file format
"""

import base64
import struct
import zlib
import sys
import re
from typing import Optional, Tuple, Dict, Any

class IonCubeDecoder:
    def __init__(self):
        self.magic_bytes = b'ICB0'
        self.version_info = {}
        self.decoded_content = ""
        
    def parse_header(self, content: str) -> Tuple[bool, Dict[str, Any]]:
        """Parse the ionCube header and extract version information"""
        # Look for ionCube header pattern
        header_pattern = r'//ICB0 (\d+):(\d+) (\d+):([0-9a-f]+) (\d+):([0-9a-f]+)'
        match = re.search(header_pattern, content)
        
        if not match:
            return False, {}
            
        header_info = {
            'major_version': int(match.group(1)),
            'minor_version': int(match.group(2)),
            'encoder_version': int(match.group(3)),
            'encoder_id': match.group(4),
            'file_version': int(match.group(5)),
            'file_id': match.group(6)
        }
        
        return True, header_info
    
    def extract_encoded_data(self, content: str) -> Optional[str]:
        """Extract the base64 encoded data from the file"""
        lines = content.split('\n')
        
        # Find where the encoded data starts (after the ?>)
        encoded_lines = []
        found_start = False
        
        for line in lines:
            if line.strip() == '?>':
                found_start = True
                continue
            if found_start and line.strip():
                # Remove any non-base64 characters and newlines
                clean_line = ''.join(c for c in line if c.isalnum() or c in '+/=')
                if clean_line:
                    encoded_lines.append(clean_line)
        
        if not encoded_lines:
            return None
            
        return ''.join(encoded_lines)
    
    def decode_base64_data(self, encoded_data: str) -> Optional[bytes]:
        """Decode the base64 encoded data"""
        try:
            # Ensure proper padding
            padding = 4 - len(encoded_data) % 4
            if padding != 4:
                encoded_data += '=' * padding
                
            return base64.b64decode(encoded_data)
        except Exception as e:
            print(f"Base64 decode error: {e}")
            return None
    
    def decompress_data(self, data: bytes) -> Optional[bytes]:
        """Try to decompress the data using various methods"""
        # Try zlib decompression
        try:
            return zlib.decompress(data)
        except:
            pass
            
        # Try with different zlib headers
        try:
            return zlib.decompress(data, -15)  # Raw deflate
        except:
            pass
            
        # Try skipping some bytes and decompressing
        for skip in range(1, 100):
            try:
                return zlib.decompress(data[skip:])
            except:
                continue
                
        return None
    
    def decode_ioncube_data(self, binary_data: bytes) -> Optional[str]:
        """Attempt to decode the ionCube binary data"""
        if len(binary_data) < 16:
            return None
            
        # ionCube files often have a specific structure
        # Let's analyze the binary data
        
        # Check for common ionCube signatures
        if binary_data[:4] == b'ICB0':
            print("Found ICB0 signature in binary data")
            
        # Try different decoding methods
        methods = [
            self._method_direct_decompress,
            self._method_skip_header_decompress,
            self._method_xor_decode,
            self._method_reverse_bytes,
        ]
        
        for method in methods:
            try:
                result = method(binary_data)
                if result and self._is_valid_php(result):
                    return result
            except Exception as e:
                continue
                
        return None
    
    def _method_direct_decompress(self, data: bytes) -> Optional[str]:
        """Try direct decompression"""
        decompressed = self.decompress_data(data)
        if decompressed:
            try:
                return decompressed.decode('utf-8', errors='ignore')
            except:
                return None
        return None
    
    def _method_skip_header_decompress(self, data: bytes) -> Optional[str]:
        """Skip some header bytes and try decompression"""
        for skip in [8, 16, 32, 64, 128]:
            if len(data) > skip:
                decompressed = self.decompress_data(data[skip:])
                if decompressed:
                    try:
                        result = decompressed.decode('utf-8', errors='ignore')
                        if self._is_valid_php(result):
                            return result
                    except:
                        continue
        return None
    
    def _method_xor_decode(self, data: bytes) -> Optional[str]:
        """Try XOR decoding with common keys"""
        keys = [0x55, 0xAA, 0xFF, 0x00, 0x5A, 0xA5]
        
        for key in keys:
            try:
                xor_data = bytes(b ^ key for b in data)
                decompressed = self.decompress_data(xor_data)
                if decompressed:
                    result = decompressed.decode('utf-8', errors='ignore')
                    if self._is_valid_php(result):
                        return result
            except:
                continue
        return None
    
    def _method_reverse_bytes(self, data: bytes) -> Optional[str]:
        """Try reversing bytes and decompressing"""
        try:
            reversed_data = data[::-1]
            decompressed = self.decompress_data(reversed_data)
            if decompressed:
                result = decompressed.decode('utf-8', errors='ignore')
                if self._is_valid_php(result):
                    return result
        except:
            pass
        return None
    
    def _is_valid_php(self, text: str) -> bool:
        """Check if the decoded text looks like valid PHP code"""
        if not text or len(text) < 10:
            return False
            
        # Check for PHP opening tags
        php_indicators = ['<?php', '<?', 'function ', 'class ', '$', 'echo ', 'print ']
        
        text_lower = text.lower()
        for indicator in php_indicators:
            if indicator in text_lower:
                return True
                
        return False
    
    def decode_file(self, file_path: str) -> bool:
        """Main method to decode an ionCube file"""
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
        except Exception as e:
            print(f"Error reading file: {e}")
            return False
        
        # Parse header
        is_ioncube, header_info = self.parse_header(content)
        if not is_ioncube:
            print("File does not appear to be an ionCube encoded file")
            return False
        
        print(f"ionCube file detected:")
        print(f"  Version: {header_info.get('major_version', 'unknown')}")
        print(f"  Encoder: {header_info.get('encoder_version', 'unknown')}:{header_info.get('encoder_id', 'unknown')}")
        print(f"  File: {header_info.get('file_version', 'unknown')}:{header_info.get('file_id', 'unknown')}")
        
        # Extract encoded data
        encoded_data = self.extract_encoded_data(content)
        if not encoded_data:
            print("Could not extract encoded data")
            return False
        
        print(f"Extracted {len(encoded_data)} characters of base64 data")
        
        # Decode base64
        binary_data = self.decode_base64_data(encoded_data)
        if not binary_data:
            print("Failed to decode base64 data")
            return False
        
        print(f"Decoded to {len(binary_data)} bytes of binary data")
        
        # Decode ionCube data
        decoded_php = self.decode_ioncube_data(binary_data)
        if not decoded_php:
            print("Failed to decode ionCube data - may need more advanced decoding")
            # Try a simpler approach - sometimes the data is just encoded without compression
            try:
                self.decoded_content = binary_data.decode('utf-8', errors='ignore')
                if self._is_valid_php(self.decoded_content):
                    print("Successfully decoded using simple UTF-8 decoding")
                    return True
            except:
                pass
            return False
        
        self.decoded_content = decoded_php
        print("Successfully decoded ionCube file!")
        return True
    
    def save_decoded(self, output_path: str) -> bool:
        """Save the decoded content to a file"""
        try:
            with open(output_path, 'w', encoding='utf-8') as f:
                f.write(self.decoded_content)
            print(f"Decoded content saved to {output_path}")
            return True
        except Exception as e:
            print(f"Error saving decoded content: {e}")
            return False
    
    def analyze_decoded(self) -> Dict[str, Any]:
        """Analyze the decoded content"""
        if not self.decoded_content:
            return {"error": "No decoded content available"}
        
        analysis = {
            "length": len(self.decoded_content),
            "lines": len(self.decoded_content.split('\n')),
            "functions": [],
            "classes": [],
            "variables": [],
            "includes": []
        }
        
        # Extract functions
        func_pattern = r'function\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*\('
        analysis["functions"] = re.findall(func_pattern, self.decoded_content, re.IGNORECASE)
        
        # Extract classes
        class_pattern = r'class\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*'
        analysis["classes"] = re.findall(class_pattern, self.decoded_content, re.IGNORECASE)
        
        # Extract variables (first few)
        var_pattern = r'\$([a-zA-Z_][a-zA-Z0-9_]*)'
        variables = re.findall(var_pattern, self.decoded_content)
        analysis["variables"] = list(set(variables))[:10]  # First 10 unique variables
        
        # Extract includes/requires
        include_pattern = r'(?:include|require)(?:_once)?\s*\(?[\'"]([^\'"]+)[\'"]'
        analysis["includes"] = re.findall(include_pattern, self.decoded_content, re.IGNORECASE)
        
        return analysis


def main():
    if len(sys.argv) != 2:
        print("Usage: python3 ioncube_decoder.py <ioncube_file>")
        sys.exit(1)
    
    file_path = sys.argv[1]
    decoder = IonCubeDecoder()
    
    print(f"Attempting to decode {file_path}...")
    
    if decoder.decode_file(file_path):
        # Save decoded file
        output_path = file_path.replace('.php', '_decoded.php')
        decoder.save_decoded(output_path)
        
        # Analyze decoded content
        analysis = decoder.analyze_decoded()
        print("\n=== Decoded Content Analysis ===")
        print(f"Length: {analysis.get('length', 0)} characters")
        print(f"Lines: {analysis.get('lines', 0)}")
        print(f"Functions found: {len(analysis.get('functions', []))}")
        if analysis.get('functions'):
            print(f"  Sample functions: {', '.join(analysis['functions'][:5])}")
        print(f"Classes found: {len(analysis.get('classes', []))}")
        if analysis.get('classes'):
            print(f"  Classes: {', '.join(analysis['classes'])}")
        print(f"Variables found: {len(analysis.get('variables', []))}")
        if analysis.get('variables'):
            print(f"  Sample variables: {', '.join(analysis['variables'][:5])}")
        print(f"Includes found: {len(analysis.get('includes', []))}")
        if analysis.get('includes'):
            print(f"  Includes: {', '.join(analysis['includes'])}")
        
        print(f"\nDecoding completed successfully! Check {output_path}")
    else:
        print("Failed to decode the file")
        sys.exit(1)


if __name__ == "__main__":
    main()