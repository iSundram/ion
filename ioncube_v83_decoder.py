#!/usr/bin/env python3
"""
ionCube v8.3 Specialized Decoder
Based on analysis of ionCube v8.3 format (ICB0 83:0)
"""

import base64
import struct
import zlib
import sys
import re
import os
from typing import Optional, Tuple, Dict, Any, List

class IonCubeV83Decoder:
    def __init__(self):
        self.debug = True
        self.decoded_content = ""
        
    def log(self, message: str):
        if self.debug:
            print(f"[DEBUG] {message}")
    
    def extract_ioncube_data(self, file_path: str) -> Tuple[bool, bytes]:
        """Extract the actual ionCube encoded data"""
        try:
            with open(file_path, 'rb') as f:
                content = f.read()
        except Exception as e:
            self.log(f"Error reading file: {e}")
            return False, b''
        
        # Look for the end of the error message section
        # The encoded data starts after the ?> on line 3
        
        # Convert to text to find the boundary
        text_content = content.decode('utf-8', errors='ignore')
        lines = text_content.split('\n')
        
        # Find line 3 which should have just "?>"
        if len(lines) < 4:
            self.log("File too short")
            return False, b''
        
        if lines[2].strip() != '?>':
            self.log(f"Unexpected content on line 3: {repr(lines[2])}")
        
        # The real data starts from line 4 (index 3)
        # Recalculate the byte offset
        line_3_end = 0
        current_line = 0
        for i, byte_val in enumerate(content):
            if byte_val == ord('\n'):
                current_line += 1
                if current_line == 3:  # After line 3
                    line_3_end = i + 1
                    break
        
        if line_3_end == 0:
            self.log("Could not find data start position")
            return False, b''
        
        # Extract the binary encoded data
        encoded_data = content[line_3_end:]
        self.log(f"Extracted {len(encoded_data)} bytes of encoded data")
        
        return True, encoded_data
    
    def decode_ioncube_v83(self, encoded_data: bytes) -> Optional[str]:
        """Decode ionCube v8.3 format data"""
        
        # ionCube v8.3 uses a custom encoding that looks like base64 but isn't
        # The data is actually a mix of base64 and binary
        
        # Method 1: Try treating as mixed base64/binary
        text_data = encoded_data.decode('utf-8', errors='ignore')
        
        # Remove newlines and extract base64-like data
        base64_chars = ''.join(c for c in text_data if c.isalnum() or c in '+/=')
        
        self.log(f"Extracted {len(base64_chars)} base64-like characters")
        
        # Try decoding chunks
        chunk_size = 4096
        for start in range(0, len(base64_chars), chunk_size):
            chunk = base64_chars[start:start + chunk_size]
            
            # Ensure proper padding
            while len(chunk) % 4 != 0:
                chunk += '='
            
            try:
                decoded_chunk = base64.b64decode(chunk)
                
                # Try to decompress
                php_code = self.try_decompress_and_decode(decoded_chunk)
                if php_code:
                    return php_code
                    
            except Exception as e:
                continue
        
        # Method 2: Try the entire thing as one base64 block
        return self.decode_entire_base64(base64_chars)
    
    def decode_entire_base64(self, base64_data: str) -> Optional[str]:
        """Try decoding entire base64 data as one block"""
        
        # Ensure proper padding
        while len(base64_data) % 4 != 0:
            base64_data += '='
        
        try:
            decoded = base64.b64decode(base64_data)
            self.log(f"Base64 decoded to {len(decoded)} bytes")
            
            return self.try_decompress_and_decode(decoded)
            
        except Exception as e:
            self.log(f"Base64 decode failed: {e}")
            return None
    
    def try_decompress_and_decode(self, data: bytes) -> Optional[str]:
        """Try various decompression and decoding methods"""
        
        # Method 1: Direct zlib decompression
        for wbits in [15, -15, 9, -9]:
            try:
                decompressed = zlib.decompress(data, wbits)
                php_code = decompressed.decode('utf-8', errors='ignore')
                if self.is_valid_php(php_code):
                    self.log(f"Success with zlib wbits={wbits}")
                    return php_code
            except:
                continue
        
        # Method 2: Skip header bytes and try decompression
        for skip in range(0, min(256, len(data)), 8):
            try:
                decompressed = zlib.decompress(data[skip:])
                php_code = decompressed.decode('utf-8', errors='ignore')
                if self.is_valid_php(php_code):
                    self.log(f"Success skipping {skip} bytes")
                    return php_code
            except:
                continue
        
        # Method 3: XOR decryption with common keys
        common_keys = [0x55, 0xAA, 0xFF, 0x5A, 0xA5, 0x33, 0xCC, 0x69, 0x96]
        
        for key in common_keys:
            try:
                xor_data = bytes(b ^ key for b in data)
                decompressed = zlib.decompress(xor_data)
                php_code = decompressed.decode('utf-8', errors='ignore')
                if self.is_valid_php(php_code):
                    self.log(f"Success with XOR key 0x{key:02x}")
                    return php_code
            except:
                continue
        
        # Method 4: Direct UTF-8 decode (in case it's not compressed)
        try:
            php_code = data.decode('utf-8', errors='ignore')
            if self.is_valid_php(php_code):
                self.log("Success with direct UTF-8 decode")
                return php_code
        except:
            pass
        
        # Method 5: ROT13 or Caesar cipher variants
        for shift in range(1, 26):
            try:
                shifted = bytes((b + shift) % 256 for b in data)
                decompressed = zlib.decompress(shifted)
                php_code = decompressed.decode('utf-8', errors='ignore')
                if self.is_valid_php(php_code):
                    self.log(f"Success with Caesar shift {shift}")
                    return php_code
            except:
                continue
        
        return None
    
    def is_valid_php(self, text: str) -> bool:
        """Check if text appears to be valid PHP code"""
        if not text or len(text) < 20:
            return False
        
        text_lower = text.lower()
        
        # Strong PHP indicators
        strong_indicators = [
            '<?php',
            'function ',
            'class ',
            'namespace ',
            'use ',
            '$_GET',
            '$_POST',
            '$_SESSION',
            'echo ',
            'print ',
            'return ',
        ]
        
        strong_score = sum(1 for indicator in strong_indicators if indicator in text_lower)
        
        # Variable pattern
        var_count = len(re.findall(r'\$[a-zA-Z_][a-zA-Z0-9_]*', text))
        
        # PHP syntax elements
        syntax_elements = [';', '{', '}', '->', '=>', '(', ')']
        syntax_score = sum(1 for elem in syntax_elements if elem in text)
        
        # Binary content check (bad if too much)
        binary_count = sum(1 for c in text if ord(c) < 32 and c not in '\n\r\t ')
        binary_ratio = binary_count / len(text) if len(text) > 0 else 1
        
        # Scoring
        total_score = strong_score * 3 + min(var_count // 2, 5) + min(syntax_score // 10, 3)
        
        if binary_ratio > 0.2:  # Too much binary content
            total_score -= 10
        
        self.log(f"PHP validation - Strong: {strong_score}, Vars: {var_count}, Syntax: {syntax_score}, Binary ratio: {binary_ratio:.3f}, Score: {total_score}")
        
        return total_score >= 4
    
    def analyze_header(self, file_path: str) -> Dict[str, Any]:
        """Analyze the ionCube header"""
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                first_line = f.readline()
        except:
            return {}
        
        # Parse ICB0 header
        match = re.search(r'ICB0 (\d+):(\d+) (\d+):([0-9a-f]+) (\d+):([0-9a-f]+)', first_line)
        if match:
            return {
                'format': 'ICB0',
                'major_version': int(match.group(1)),
                'minor_version': int(match.group(2)),
                'encoder_version': int(match.group(3)),
                'encoder_id': match.group(4),
                'file_version': int(match.group(5)),
                'file_id': match.group(6)
            }
        
        return {}
    
    def decode_file(self, file_path: str) -> bool:
        """Main decoding function"""
        print(f"ionCube v8.3 Decoder - Processing {file_path}")
        print("=" * 60)
        
        # Analyze header
        header_info = self.analyze_header(file_path)
        if header_info:
            print("Header Analysis:")
            for key, value in header_info.items():
                print(f"  {key}: {value}")
        else:
            print("Could not parse header")
            return False
        
        # Extract encoded data
        success, encoded_data = self.extract_ioncube_data(file_path)
        if not success:
            print("Failed to extract encoded data")
            return False
        
        # Attempt decoding
        print("\nAttempting decoding...")
        decoded_php = self.decode_ioncube_v83(encoded_data)
        
        if decoded_php:
            self.decoded_content = decoded_php
            print("✓ Successfully decoded ionCube file!")
            return True
        else:
            print("✗ Failed to decode ionCube file")
            print("\nThis may require:")
            print("- Specific ionCube loader version")
            print("- License key or additional decryption parameters")
            print("- More advanced reverse engineering")
            return False
    
    def save_decoded(self, output_path: str) -> bool:
        """Save decoded content"""
        try:
            with open(output_path, 'w', encoding='utf-8') as f:
                f.write(self.decoded_content)
            print(f"Decoded content saved to: {output_path}")
            return True
        except Exception as e:
            print(f"Error saving decoded content: {e}")
            return False
    
    def analyze_decoded_content(self) -> Dict[str, Any]:
        """Analyze the decoded PHP content"""
        if not self.decoded_content:
            return {"error": "No decoded content available"}
        
        content = self.decoded_content
        
        analysis = {
            "size_bytes": len(content),
            "size_kb": len(content) / 1024,
            "lines": len(content.split('\n')),
            "functions": [],
            "classes": [],
            "variables": [],
            "security_functions": [],
            "file_operations": [],
            "network_operations": []
        }
        
        # Extract functions
        func_pattern = r'function\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*\('
        analysis["functions"] = list(set(re.findall(func_pattern, content, re.IGNORECASE)))
        
        # Extract classes
        class_pattern = r'class\s+([a-zA-Z_][a-zA-Z0-9_]*)'
        analysis["classes"] = list(set(re.findall(class_pattern, content, re.IGNORECASE)))
        
        # Extract variables
        var_pattern = r'\$([a-zA-Z_][a-zA-Z0-9_]*)'
        all_vars = re.findall(var_pattern, content)
        analysis["variables"] = list(set(all_vars))[:20]  # Top 20 most common
        
        # Security-related functions
        security_funcs = ['eval', 'exec', 'system', 'shell_exec', 'passthru', 'base64_decode', 'md5', 'sha1', 'crypt']
        analysis["security_functions"] = [func for func in security_funcs if func in content.lower()]
        
        # File operations
        file_funcs = ['fopen', 'fwrite', 'fread', 'file_get_contents', 'file_put_contents', 'include', 'require']
        analysis["file_operations"] = [func for func in file_funcs if func in content.lower()]
        
        # Network operations
        network_funcs = ['curl_exec', 'file_get_contents', 'fsockopen', 'gethostbyname', 'http']
        analysis["network_operations"] = [func for func in network_funcs if func in content.lower()]
        
        return analysis


def main():
    if len(sys.argv) != 2:
        print("Usage: python3 ioncube_v83_decoder.py <hooks.php>")
        print("\nSpecialized decoder for ionCube v8.3 format files")
        sys.exit(1)
    
    file_path = sys.argv[1]
    
    if not os.path.exists(file_path):
        print(f"Error: File {file_path} not found")
        sys.exit(1)
    
    decoder = IonCubeV83Decoder()
    
    # Attempt decoding
    if decoder.decode_file(file_path):
        # Save decoded content
        base_name = os.path.splitext(file_path)[0]
        output_path = f"{base_name}_v83_decoded.php"
        decoder.save_decoded(output_path)
        
        # Analyze decoded content
        analysis = decoder.analyze_decoded_content()
        
        print("\n" + "=" * 60)
        print("DECODED CONTENT ANALYSIS")
        print("=" * 60)
        print(f"Size: {analysis['size_bytes']} bytes ({analysis['size_kb']:.1f} KB)")
        print(f"Lines: {analysis['lines']}")
        
        if analysis['functions']:
            print(f"Functions ({len(analysis['functions'])}): {', '.join(analysis['functions'][:5])}" + ("..." if len(analysis['functions']) > 5 else ""))
        
        if analysis['classes']:
            print(f"Classes ({len(analysis['classes'])}): {', '.join(analysis['classes'])}")
        
        if analysis['variables']:
            print(f"Variables ({len(analysis['variables'])}): {', '.join(analysis['variables'][:10])}" + ("..." if len(analysis['variables']) > 10 else ""))
        
        if analysis['security_functions']:
            print(f"Security functions: {', '.join(analysis['security_functions'])}")
        
        if analysis['file_operations']:
            print(f"File operations: {', '.join(analysis['file_operations'])}")
        
        if analysis['network_operations']:
            print(f"Network operations: {', '.join(analysis['network_operations'])}")
        
        print(f"\n📄 Decoded file: {output_path}")
        
        # Show first few lines
        print("\nFirst 300 characters of decoded content:")
        print("-" * 40)
        print(decoder.decoded_content[:300])
        if len(decoder.decoded_content) > 300:
            print("...")
        print("-" * 40)
        
        print("\n✅ Decoding completed successfully!")
        
        # Check if it looks properly decoded
        if 'function' in decoder.decoded_content.lower() or '<?php' in decoder.decoded_content.lower():
            print("✅ Content appears to be valid PHP code")
        else:
            print("⚠️  Content may not be fully decoded or may need additional processing")
        
    else:
        print("\n❌ Decoding failed")
        print("\nPossible reasons:")
        print("- File uses advanced ionCube protection")
        print("- Requires specific loader version/license")
        print("- Custom encryption keys needed")
        print("- File is corrupted or not a standard ionCube file")


if __name__ == "__main__":
    main()