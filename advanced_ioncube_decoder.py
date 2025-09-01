#!/usr/bin/env python3
"""
Advanced ionCube Decoder - More sophisticated approach
Based on ionCube reverse engineering research
"""

import base64
import struct
import zlib
import sys
import re
import binascii
from typing import Optional, Tuple, Dict, Any, List

class AdvancedIonCubeDecoder:
    def __init__(self):
        self.magic_signatures = [b'ICB0', b'ICEBC', b'IONCUBE']
        self.decoded_content = ""
        self.debug = True
        
    def log(self, message: str):
        if self.debug:
            print(f"[DEBUG] {message}")
    
    def parse_ioncube_header(self, content: str) -> Tuple[bool, Dict[str, Any]]:
        """Parse ionCube header with more detail"""
        # Enhanced header parsing
        patterns = [
            r'//ICB0 (\d+):(\d+) (\d+):([0-9a-f]+) (\d+):([0-9a-f]+)',
            r'//ICB(\d+) (\d+):(\d+) (\d+):([0-9a-f]+) (\d+):([0-9a-f]+)',
            r'IONCUBE.*?(\d+)\.(\d+)',
        ]
        
        for pattern in patterns:
            match = re.search(pattern, content)
            if match:
                groups = match.groups()
                if len(groups) >= 6:
                    return True, {
                        'format_version': groups[0],
                        'major_version': groups[1], 
                        'minor_version': groups[2],
                        'encoder_version': groups[3],
                        'encoder_id': groups[4],
                        'file_version': groups[5] if len(groups) > 5 else groups[4],
                        'file_id': groups[6] if len(groups) > 6 else groups[5]
                    }
        
        return False, {}
    
    def extract_binary_payload(self, content: str) -> Optional[bytes]:
        """Extract and decode the binary payload"""
        lines = content.split('\n')
        
        # Find the end of PHP header (after ?>)
        payload_lines = []
        found_end = False
        
        for line in lines:
            if '?>' in line and not found_end:
                found_end = True
                continue
            if found_end and line.strip():
                # Clean the line - remove any whitespace and non-base64 chars
                clean_line = re.sub(r'[^A-Za-z0-9+/=]', '', line)
                if clean_line:
                    payload_lines.append(clean_line)
        
        if not payload_lines:
            self.log("No base64 payload found")
            return None
        
        payload = ''.join(payload_lines)
        self.log(f"Extracted payload length: {len(payload)}")
        
        # Decode base64
        try:
            # Ensure proper padding
            padding = 4 - len(payload) % 4
            if padding != 4:
                payload += '=' * padding
            
            binary_data = base64.b64decode(payload)
            self.log(f"Decoded binary length: {len(binary_data)}")
            return binary_data
        except Exception as e:
            self.log(f"Base64 decode failed: {e}")
            return None
    
    def analyze_binary_structure(self, data: bytes) -> Dict[str, Any]:
        """Analyze the binary structure of ionCube data"""
        if len(data) < 16:
            return {}
        
        analysis = {
            'total_length': len(data),
            'header_bytes': data[:16].hex(),
            'potential_signatures': [],
            'entropy_sections': []
        }
        
        # Look for known signatures
        for i in range(min(256, len(data) - 4)):
            chunk = data[i:i+4]
            if chunk in self.magic_signatures:
                analysis['potential_signatures'].append((i, chunk.decode('ascii', errors='ignore')))
        
        # Analyze entropy in sections
        section_size = len(data) // 10
        for i in range(0, len(data), section_size):
            section = data[i:i+section_size]
            entropy = self.calculate_entropy(section)
            analysis['entropy_sections'].append((i, entropy))
        
        return analysis
    
    def calculate_entropy(self, data: bytes) -> float:
        """Calculate Shannon entropy of data"""
        if not data:
            return 0
        
        import math
        
        byte_counts = [0] * 256
        for byte in data:
            byte_counts[byte] += 1
        
        entropy = 0
        length = len(data)
        for count in byte_counts:
            if count > 0:
                probability = count / length
                entropy -= probability * math.log2(probability)
        
        return entropy
    
    def try_ioncube_v3_decode(self, data: bytes) -> Optional[str]:
        """Try decoding ionCube v3.x format"""
        self.log("Attempting ionCube v3.x decoding")
        
        if len(data) < 32:
            return None
        
        # ionCube v3 often has a header structure
        # Try different header sizes
        for header_size in [8, 16, 24, 32, 48, 64]:
            if len(data) <= header_size:
                continue
                
            payload = data[header_size:]
            
            # Try direct zlib decompression
            for method in [zlib.decompress, lambda x: zlib.decompress(x, -15)]:
                try:
                    decompressed = method(payload)
                    decoded = decompressed.decode('utf-8', errors='ignore')
                    if self.is_valid_php_code(decoded):
                        self.log(f"Success with v3 decode, header_size={header_size}")
                        return decoded
                except:
                    continue
        
        return None
    
    def try_ioncube_v4_decode(self, data: bytes) -> Optional[str]:
        """Try decoding ionCube v4.x format"""
        self.log("Attempting ionCube v4.x decoding")
        
        if len(data) < 64:
            return None
        
        # ionCube v4+ uses more complex encryption
        # Try different approaches
        
        # Method 1: Look for embedded zlib streams
        for i in range(0, min(512, len(data) - 32)):
            chunk = data[i:]
            
            # Try zlib magic numbers
            if chunk[:2] in [b'\x78\x9c', b'\x78\x01', b'\x78\xda']:
                try:
                    decompressed = zlib.decompress(chunk)
                    decoded = decompressed.decode('utf-8', errors='ignore')
                    if self.is_valid_php_code(decoded):
                        self.log(f"Success with v4 zlib decode at offset {i}")
                        return decoded
                except:
                    continue
        
        # Method 2: Try XOR with common keys
        xor_keys = [
            0x5A, 0xA5, 0x55, 0xAA, 0xFF, 0x00,
            0x3C, 0xC3, 0x0F, 0xF0, 0x33, 0xCC
        ]
        
        for key in xor_keys:
            try:
                xor_data = bytes(b ^ key for b in data[32:])  # Skip header
                decompressed = zlib.decompress(xor_data)
                decoded = decompressed.decode('utf-8', errors='ignore')
                if self.is_valid_php_code(decoded):
                    self.log(f"Success with v4 XOR decode, key=0x{key:02x}")
                    return decoded
            except:
                continue
        
        return None
    
    def try_simple_transformations(self, data: bytes) -> Optional[str]:
        """Try simple transformations on the data"""
        self.log("Trying simple transformations")
        
        transformations = [
            ("reverse", lambda x: x[::-1]),
            ("rot13_bytes", lambda x: bytes((b + 13) % 256 for b in x)),
            ("swap_pairs", lambda x: b''.join(x[i+1:i+2] + x[i:i+1] for i in range(0, len(x)-1, 2))),
            ("subtract_0x20", lambda x: bytes((b - 0x20) % 256 for b in x)),
        ]
        
        for name, transform in transformations:
            try:
                transformed = transform(data)
                
                # Try decompressing the transformed data
                for decomp_method in [zlib.decompress, lambda x: zlib.decompress(x, -15)]:
                    try:
                        decompressed = decomp_method(transformed)
                        decoded = decompressed.decode('utf-8', errors='ignore')
                        if self.is_valid_php_code(decoded):
                            self.log(f"Success with {name} transformation")
                            return decoded
                    except:
                        continue
                        
                # Try direct decode
                try:
                    decoded = transformed.decode('utf-8', errors='ignore')
                    if self.is_valid_php_code(decoded):
                        self.log(f"Success with {name} direct decode")
                        return decoded
                except:
                    continue
                    
            except Exception as e:
                continue
        
        return None
    
    def try_bytecode_decompilation(self, data: bytes) -> Optional[str]:
        """Attempt to decompile if data contains PHP bytecode"""
        self.log("Checking for PHP bytecode patterns")
        
        # Look for PHP opcode patterns
        opcode_signatures = [
            b'ZEND',
            b'OPCACHE',
            b'\x00\x00\x00\x00',  # Common padding
        ]
        
        for sig in opcode_signatures:
            if sig in data:
                self.log(f"Found potential bytecode signature: {sig}")
                # This would require a PHP bytecode decompiler
                # For now, just note that bytecode was detected
                break
        
        return None
    
    def is_valid_php_code(self, text: str) -> bool:
        """Enhanced PHP code validation"""
        if not text or len(text) < 5:
            return False
        
        text_lower = text.lower().strip()
        
        # Strong indicators
        strong_indicators = [
            '<?php',
            '<?=',
            'function ',
            'class ',
            'namespace ',
            'use ',
            'require',
            'include',
            'echo ',
            'print ',
            'return ',
            'if (',
            'for (',
            'while (',
            'foreach (',
        ]
        
        strong_count = sum(1 for indicator in strong_indicators if indicator in text_lower)
        
        # Weak indicators
        weak_indicators = ['$', ';', '{', '}', '(', ')', '->', '=>']
        weak_count = sum(1 for indicator in weak_indicators if indicator in text)
        
        # Variable patterns
        var_pattern = r'\$[a-zA-Z_][a-zA-Z0-9_]*'
        var_matches = len(re.findall(var_pattern, text))
        
        # Scoring system
        score = strong_count * 3 + min(weak_count // 5, 3) + min(var_matches // 2, 2)
        
        # Check for binary junk
        binary_chars = sum(1 for c in text if ord(c) < 32 and c not in '\n\r\t')
        if binary_chars > len(text) * 0.1:  # More than 10% binary
            score -= 5
        
        self.log(f"PHP validation score: {score} (strong: {strong_count}, weak: {weak_count}, vars: {var_matches})")
        
        return score >= 3
    
    def decode_file(self, file_path: str) -> bool:
        """Main decoding method"""
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
        except Exception as e:
            print(f"Error reading file: {e}")
            return False
        
        self.log(f"File size: {len(content)} characters")
        
        # Parse header
        is_ioncube, header_info = self.parse_ioncube_header(content)
        if not is_ioncube:
            print("File does not appear to be an ionCube encoded file")
            return False
        
        print("ionCube file detected:")
        for key, value in header_info.items():
            print(f"  {key}: {value}")
        
        # Extract binary payload
        binary_data = self.extract_binary_payload(content)
        if not binary_data:
            print("Failed to extract binary payload")
            return False
        
        # Analyze structure
        analysis = self.analyze_binary_structure(binary_data)
        self.log(f"Binary analysis: {analysis}")
        
        # Try different decoding methods
        decode_methods = [
            self.try_ioncube_v3_decode,
            self.try_ioncube_v4_decode,
            self.try_simple_transformations,
            self.try_bytecode_decompilation,
        ]
        
        for method in decode_methods:
            result = method(binary_data)
            if result:
                self.decoded_content = result
                print(f"Successfully decoded using {method.__name__}!")
                return True
        
        print("All decoding methods failed")
        return False
    
    def save_decoded(self, output_path: str) -> bool:
        """Save decoded content"""
        try:
            with open(output_path, 'w', encoding='utf-8') as f:
                f.write(self.decoded_content)
            print(f"Decoded content saved to {output_path}")
            return True
        except Exception as e:
            print(f"Error saving: {e}")
            return False
    
    def analyze_decoded_content(self) -> Dict[str, Any]:
        """Analyze decoded PHP content"""
        if not self.decoded_content:
            return {"error": "No decoded content"}
        
        analysis = {
            "size": len(self.decoded_content),
            "lines": len(self.decoded_content.split('\n')),
            "functions": [],
            "classes": [],
            "variables": set(),
            "constants": [],
            "includes": [],
            "php_version_features": []
        }
        
        content = self.decoded_content
        
        # Extract functions
        func_matches = re.findall(r'function\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*\(', content, re.IGNORECASE)
        analysis["functions"] = list(set(func_matches))
        
        # Extract classes
        class_matches = re.findall(r'class\s+([a-zA-Z_][a-zA-Z0-9_]*)', content, re.IGNORECASE)
        analysis["classes"] = list(set(class_matches))
        
        # Extract variables
        var_matches = re.findall(r'\$([a-zA-Z_][a-zA-Z0-9_]*)', content)
        analysis["variables"] = list(set(var_matches))[:20]  # Limit to first 20
        
        # Extract constants
        const_matches = re.findall(r'define\s*\(\s*[\'"]([^"\']+)[\'"]', content, re.IGNORECASE)
        analysis["constants"] = list(set(const_matches))
        
        # Extract includes/requires
        include_matches = re.findall(r'(?:include|require)(?:_once)?\s*\(?[\'"]([^\'"]+)[\'"]', content, re.IGNORECASE)
        analysis["includes"] = list(set(include_matches))
        
        # Check for PHP version features
        php_features = [
            ('namespaces', r'namespace\s+'),
            ('traits', r'trait\s+'),
            ('closures', r'function\s*\(.*?\)\s*use\s*\('),
            ('short_arrays', r'\[.*?\]'),
            ('short_echo', r'<\?='),
        ]
        
        for feature_name, pattern in php_features:
            if re.search(pattern, content, re.IGNORECASE):
                analysis["php_version_features"].append(feature_name)
        
        return analysis


def main():
    if len(sys.argv) != 2:
        print("Usage: python3 advanced_ioncube_decoder.py <ioncube_file>")
        sys.exit(1)
    
    file_path = sys.argv[1]
    decoder = AdvancedIonCubeDecoder()
    
    print(f"Advanced ionCube Decoder - Processing {file_path}")
    print("=" * 50)
    
    if decoder.decode_file(file_path):
        # Save decoded content
        output_path = file_path.replace('.php', '_advanced_decoded.php')
        decoder.save_decoded(output_path)
        
        # Analyze content
        analysis = decoder.analyze_decoded_content()
        
        print("\n" + "=" * 50)
        print("DECODED CONTENT ANALYSIS")
        print("=" * 50)
        print(f"Size: {analysis['size']} bytes")
        print(f"Lines: {analysis['lines']}")
        print(f"Functions: {len(analysis['functions'])}")
        if analysis['functions'][:5]:
            print(f"  Sample: {', '.join(analysis['functions'][:5])}")
        print(f"Classes: {len(analysis['classes'])}")
        if analysis['classes']:
            print(f"  Found: {', '.join(analysis['classes'])}")
        print(f"Variables: {len(analysis['variables'])}")
        if analysis['variables'][:10]:
            print(f"  Sample: {', '.join(analysis['variables'][:10])}")
        print(f"Constants: {len(analysis['constants'])}")
        if analysis['constants']:
            print(f"  Found: {', '.join(analysis['constants'])}")
        print(f"Includes: {len(analysis['includes'])}")
        if analysis['includes']:
            print(f"  Found: {', '.join(analysis['includes'])}")
        print(f"PHP Features: {', '.join(analysis['php_version_features'])}")
        
        print(f"\nDecoded file saved as: {output_path}")
        print("\nFirst 200 characters of decoded content:")
        print("-" * 40)
        print(decoder.decoded_content[:200])
        print("-" * 40)
        
    else:
        print("Failed to decode the ionCube file")
        print("This may require additional reverse engineering or")
        print("access to the specific ionCube loader version")


if __name__ == "__main__":
    main()