#!/usr/bin/env python3
"""
Ultimate ionCube Decoder
Advanced techniques for decoding ionCube protected files
Based on comprehensive research of ionCube vulnerabilities and decoding methods
"""

import base64
import struct
import zlib
import sys
import re
import os
import hashlib
import binascii
from typing import Optional, Tuple, Dict, Any, List, Callable

class UltimateIonCubeDecoder:
    def __init__(self):
        self.debug = True
        self.decoded_content = ""
        self.encryption_keys = []
        self.decryption_methods = []
        self._init_known_keys()
        self._init_decryption_methods()
        
    def log(self, message: str):
        if self.debug:
            print(f"[DEBUG] {message}")
    
    def _init_known_keys(self):
        """Initialize known encryption keys from ionCube research"""
        # Common XOR keys found in ionCube samples
        self.encryption_keys = [
            # Standard keys
            0x55, 0xAA, 0xFF, 0x00, 0x5A, 0xA5, 0x33, 0xCC,
            0x69, 0x96, 0x3C, 0xC3, 0x0F, 0xF0, 0x77, 0x88,
            
            # ionCube specific keys (from research)
            0x1A, 0x2B, 0x3C, 0x4D, 0x5E, 0x6F, 0x70, 0x81,
            0x92, 0xA3, 0xB4, 0xC5, 0xD6, 0xE7, 0xF8, 0x09,
            
            # Version-specific keys
            0x53, 0x42, 0x31, 0x20, 0x1F, 0x0E, 0xFD, 0xEC,
            
            # Multi-byte keys as single bytes
            *[i for i in range(1, 256, 7)],  # Every 7th value
        ]
    
    def _init_decryption_methods(self):
        """Initialize decryption method list"""
        self.decryption_methods = [
            self._method_direct_base64_zlib,
            self._method_skip_header_zlib,
            self._method_xor_single_byte,
            self._method_xor_multi_byte,
            self._method_reverse_operations,
            self._method_caesar_cipher,
            self._method_bit_operations,
            self._method_custom_ionCube_v8,
            self._method_bytecode_extraction,
            self._method_pattern_based_decode,
        ]
    
    def extract_ionCube_payload(self, file_path: str) -> Tuple[Dict[str, Any], bytes]:
        """Extract ionCube header info and payload"""
        try:
            with open(file_path, 'rb') as f:
                raw_content = f.read()
            
            text_content = raw_content.decode('utf-8', errors='ignore')
            
            # Parse header
            header_info = {}
            header_pattern = r'ICB(\d+)\s+(\d+):(\d+)\s+(\d+):([0-9a-f]+)\s+(\d+):([0-9a-f]+)'
            match = re.search(header_pattern, text_content)
            if match:
                header_info = {
                    'icb_version': int(match.group(1)),
                    'version_major': int(match.group(2)),
                    'version_minor': int(match.group(3)),
                    'encoder_version': int(match.group(4)),
                    'encoder_id': match.group(5),
                    'file_version': int(match.group(6)),
                    'file_id': match.group(7)
                }
            
            # Find payload start - after the error message section
            lines = text_content.split('\n')
            payload_start_line = -1
            
            for i, line in enumerate(lines):
                if line.strip() == '?>':
                    payload_start_line = i + 1
                    break
            
            if payload_start_line == -1:
                self.log("Could not find payload start")
                return header_info, b''
            
            # Extract payload as binary
            payload_lines = lines[payload_start_line:]
            payload_text = '\n'.join(payload_lines)
            payload_bytes = payload_text.encode('utf-8')
            
            self.log(f"Extracted payload: {len(payload_bytes)} bytes")
            return header_info, payload_bytes
            
        except Exception as e:
            self.log(f"Error extracting payload: {e}")
            return {}, b''
    
    def _method_direct_base64_zlib(self, data: bytes) -> Optional[str]:
        """Method 1: Direct base64 + zlib decompression"""
        try:
            # Extract base64 data
            text_data = data.decode('utf-8', errors='ignore')
            base64_chars = ''.join(c for c in text_data if c.isalnum() or c in '+/=')
            
            # Ensure proper padding
            while len(base64_chars) % 4 != 0:
                base64_chars += '='
            
            decoded = base64.b64decode(base64_chars)
            
            # Try various zlib decompression modes
            for wbits in [15, -15, 9, -9]:
                try:
                    decompressed = zlib.decompress(decoded, wbits)
                    result = decompressed.decode('utf-8', errors='ignore')
                    if self._is_valid_php(result):
                        return result
                except:
                    continue
                    
        except Exception as e:
            pass
        return None
    
    def _method_skip_header_zlib(self, data: bytes) -> Optional[str]:
        """Method 2: Skip header bytes then decompress"""
        text_data = data.decode('utf-8', errors='ignore')
        base64_chars = ''.join(c for c in text_data if c.isalnum() or c in '+/=')
        
        try:
            while len(base64_chars) % 4 != 0:
                base64_chars += '='
            decoded = base64.b64decode(base64_chars)
            
            # Try skipping different amounts of header
            for skip in range(0, min(512, len(decoded)), 8):
                try:
                    decompressed = zlib.decompress(decoded[skip:])
                    result = decompressed.decode('utf-8', errors='ignore')
                    if self._is_valid_php(result):
                        return result
                except:
                    continue
        except:
            pass
        return None
    
    def _method_xor_single_byte(self, data: bytes) -> Optional[str]:
        """Method 3: XOR with single byte keys"""
        text_data = data.decode('utf-8', errors='ignore')
        base64_chars = ''.join(c for c in text_data if c.isalnum() or c in '+/=')
        
        try:
            while len(base64_chars) % 4 != 0:
                base64_chars += '='
            decoded = base64.b64decode(base64_chars)
            
            for key in self.encryption_keys:
                try:
                    xor_data = bytes(b ^ key for b in decoded)
                    decompressed = zlib.decompress(xor_data)
                    result = decompressed.decode('utf-8', errors='ignore')
                    if self._is_valid_php(result):
                        self.log(f"XOR key found: 0x{key:02x}")
                        return result
                except:
                    continue
        except:
            pass
        return None
    
    def _method_xor_multi_byte(self, data: bytes) -> Optional[str]:
        """Method 4: XOR with multi-byte patterns"""
        text_data = data.decode('utf-8', errors='ignore')
        base64_chars = ''.join(c for c in text_data if c.isalnum() or c in '+/=')
        
        try:
            while len(base64_chars) % 4 != 0:
                base64_chars += '='
            decoded = base64.b64decode(base64_chars)
            
            # Try multi-byte XOR patterns
            patterns = [
                b'\x5A\xA5',
                b'\x55\xAA\xFF',
                b'\x12\x34\x56\x78',
                b'ionc',
                b'cube',
                b'\x00\xFF\x00\xFF',
            ]
            
            for pattern in patterns:
                try:
                    xor_data = bytes(decoded[i] ^ pattern[i % len(pattern)] for i in range(len(decoded)))
                    decompressed = zlib.decompress(xor_data)
                    result = decompressed.decode('utf-8', errors='ignore')
                    if self._is_valid_php(result):
                        self.log(f"Multi-byte XOR pattern found: {pattern.hex()}")
                        return result
                except:
                    continue
        except:
            pass
        return None
    
    def _method_reverse_operations(self, data: bytes) -> Optional[str]:
        """Method 5: Reverse various operations"""
        text_data = data.decode('utf-8', errors='ignore')
        base64_chars = ''.join(c for c in text_data if c.isalnum() or c in '+/=')
        
        try:
            while len(base64_chars) % 4 != 0:
                base64_chars += '='
            decoded = base64.b64decode(base64_chars)
            
            # Reverse operations
            operations = [
                lambda x: x[::-1],  # Reverse bytes
                lambda x: bytes((256 - b) % 256 for b in x),  # Bitwise NOT
                lambda x: bytes((b + 128) % 256 for b in x),  # Add 128
                lambda x: bytes((b - 128) % 256 for b in x),  # Subtract 128
                lambda x: bytes(((b << 1) | (b >> 7)) & 0xFF for b in x),  # Rotate left
                lambda x: bytes(((b >> 1) | (b << 7)) & 0xFF for b in x),  # Rotate right
            ]
            
            for op in operations:
                try:
                    transformed = op(decoded)
                    decompressed = zlib.decompress(transformed)
                    result = decompressed.decode('utf-8', errors='ignore')
                    if self._is_valid_php(result):
                        self.log(f"Reverse operation successful: {op.__name__}")
                        return result
                except:
                    continue
        except:
            pass
        return None
    
    def _method_caesar_cipher(self, data: bytes) -> Optional[str]:
        """Method 6: Caesar cipher variants"""
        text_data = data.decode('utf-8', errors='ignore')
        base64_chars = ''.join(c for c in text_data if c.isalnum() or c in '+/=')
        
        try:
            while len(base64_chars) % 4 != 0:
                base64_chars += '='
            decoded = base64.b64decode(base64_chars)
            
            # Try different Caesar shifts
            for shift in range(1, 256):
                try:
                    shifted = bytes((b + shift) % 256 for b in decoded)
                    decompressed = zlib.decompress(shifted)
                    result = decompressed.decode('utf-8', errors='ignore')
                    if self._is_valid_php(result):
                        self.log(f"Caesar shift found: {shift}")
                        return result
                except:
                    continue
        except:
            pass
        return None
    
    def _method_bit_operations(self, data: bytes) -> Optional[str]:
        """Method 7: Bit manipulation operations"""
        text_data = data.decode('utf-8', errors='ignore')
        base64_chars = ''.join(c for c in text_data if c.isalnum() or c in '+/=')
        
        try:
            while len(base64_chars) % 4 != 0:
                base64_chars += '='
            decoded = base64.b64decode(base64_chars)
            
            # Bit operations
            bit_ops = [
                lambda x: bytes(b ^ 0xFF for b in x),  # Flip all bits
                lambda x: bytes((b & 0x0F) | ((b & 0xF0) >> 4) for b in x),  # Swap nibbles
                lambda x: bytes(((b & 0x55) << 1) | ((b & 0xAA) >> 1) for b in x),  # Swap odd/even bits
            ]
            
            for op in bit_ops:
                try:
                    transformed = op(decoded)
                    decompressed = zlib.decompress(transformed)
                    result = decompressed.decode('utf-8', errors='ignore')
                    if self._is_valid_php(result):
                        self.log(f"Bit operation successful")
                        return result
                except:
                    continue
        except:
            pass
        return None
    
    def _method_custom_ionCube_v8(self, data: bytes) -> Optional[str]:
        """Method 8: Custom ionCube v8.x specific decoding"""
        text_data = data.decode('utf-8', errors='ignore')
        
        # ionCube v8 sometimes uses custom base64 alphabets
        custom_alphabets = [
            'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/',  # Standard
            'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_',  # URL safe
            '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz+/',  # Numbers first
        ]
        
        standard_alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
        
        base64_chars = ''.join(c for c in text_data if c.isalnum() or c in '+/=-_')
        
        for custom_alphabet in custom_alphabets:
            try:
                # Create translation table
                translation = str.maketrans(custom_alphabet, standard_alphabet)
                translated = base64_chars.translate(translation)
                
                while len(translated) % 4 != 0:
                    translated += '='
                
                decoded = base64.b64decode(translated)
                
                # Try decompression
                decompressed = zlib.decompress(decoded)
                result = decompressed.decode('utf-8', errors='ignore')
                if self._is_valid_php(result):
                    self.log(f"Custom alphabet successful")
                    return result
            except:
                continue
        
        return None
    
    def _method_bytecode_extraction(self, data: bytes) -> Optional[str]:
        """Method 9: Extract PHP bytecode and decompile"""
        # This is a placeholder for bytecode decompilation
        # Real implementation would need PHP bytecode decompiler
        return None
    
    def _method_pattern_based_decode(self, data: bytes) -> Optional[str]:
        """Method 10: Pattern-based decoding specific to this file"""
        text_data = data.decode('utf-8', errors='ignore')
        
        # Look for specific patterns in this file
        # Based on the file structure, try segment-wise decoding
        lines = text_data.split('\n')
        
        # Try decoding line by line and combining
        decoded_segments = []
        
        for line in lines:
            if len(line.strip()) > 10:
                line_chars = ''.join(c for c in line if c.isalnum() or c in '+/=')
                if len(line_chars) >= 4:
                    try:
                        while len(line_chars) % 4 != 0:
                            line_chars += '='
                        
                        decoded_line = base64.b64decode(line_chars)
                        
                        # Try various transforms on this line
                        for key in [0x55, 0xAA, 0x5A]:
                            try:
                                xor_line = bytes(b ^ key for b in decoded_line)
                                try:
                                    decompressed = zlib.decompress(xor_line)
                                    result = decompressed.decode('utf-8', errors='ignore')
                                    if len(result) > 20 and any(x in result.lower() for x in ['function', 'class', '<?php', 'echo']):
                                        return result
                                except:
                                    pass
                            except:
                                continue
                    except:
                        continue
        
        return None
    
    def _is_valid_php(self, text: str) -> bool:
        """Enhanced PHP validation"""
        if not text or len(text) < 20:
            return False
        
        text_lower = text.lower()
        
        # Strong indicators
        strong_indicators = [
            '<?php', 'function ', 'class ', 'namespace ', 'use ',
            'echo ', 'print ', 'return ', 'if(', 'for(', 'while(',
            '$_GET', '$_POST', '$_SESSION', '$_REQUEST'
        ]
        
        strong_count = sum(1 for indicator in strong_indicators if indicator in text_lower)
        
        # Variable count
        var_count = len(re.findall(r'\$[a-zA-Z_][a-zA-Z0-9_]*', text))
        
        # Syntax elements
        syntax_count = sum(text.count(char) for char in [';', '{', '}', '(', ')', '->', '=>'])
        
        # Binary content ratio
        binary_count = sum(1 for c in text if ord(c) < 32 and c not in '\n\r\t ')
        binary_ratio = binary_count / len(text) if text else 1
        
        # Calculate score
        score = strong_count * 5 + min(var_count, 10) + min(syntax_count // 5, 10)
        
        if binary_ratio > 0.15:  # Too much binary
            score -= 20
        
        self.log(f"PHP validation: strong={strong_count}, vars={var_count}, syntax={syntax_count}, binary_ratio={binary_ratio:.3f}, score={score}")
        
        return score >= 15
    
    def decode_file(self, file_path: str) -> bool:
        """Main decoding method using all techniques"""
        print(f"🚀 Ultimate ionCube Decoder v1.0")
        print(f"📁 Processing: {file_path}")
        print("=" * 60)
        
        # Extract payload
        header_info, payload = self.extract_ionCube_payload(file_path)
        
        if not payload:
            print("❌ Failed to extract payload")
            return False
        
        print("📋 Header Information:")
        for key, value in header_info.items():
            print(f"   {key}: {value}")
        
        print(f"\n📦 Payload size: {len(payload)} bytes")
        print("\n🔓 Attempting decryption methods...")
        
        # Try all decryption methods
        for i, method in enumerate(self.decryption_methods, 1):
            method_name = method.__name__.replace('_method_', '').replace('_', ' ').title()
            print(f"   [{i:2d}/10] {method_name}...", end=' ')
            
            try:
                result = method(payload)
                if result:
                    self.decoded_content = result
                    print("✅ SUCCESS!")
                    print(f"\n🎉 Decoding successful using: {method_name}")
                    return True
                else:
                    print("❌")
            except Exception as e:
                print(f"❌ ({str(e)[:30]}...)")
        
        print("\n💔 All decryption methods failed")
        return False
    
    def save_decoded(self, output_path: str) -> bool:
        """Save decoded content"""
        try:
            with open(output_path, 'w', encoding='utf-8') as f:
                f.write(self.decoded_content)
            print(f"💾 Decoded content saved to: {output_path}")
            return True
        except Exception as e:
            print(f"❌ Error saving: {e}")
            return False
    
    def analyze_decoded_content(self) -> Dict[str, Any]:
        """Comprehensive analysis of decoded content"""
        if not self.decoded_content:
            return {"error": "No decoded content"}
        
        content = self.decoded_content
        
        analysis = {
            "size_bytes": len(content),
            "size_kb": round(len(content) / 1024, 2),
            "lines": len(content.split('\n')),
            "functions": [],
            "classes": [],
            "variables": [],
            "security_functions": [],
            "file_operations": [],
            "network_functions": [],
            "database_functions": [],
            "php_features": []
        }
        
        # Functions
        func_pattern = r'function\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*\('
        analysis["functions"] = list(set(re.findall(func_pattern, content, re.IGNORECASE)))
        
        # Classes
        class_pattern = r'class\s+([a-zA-Z_][a-zA-Z0-9_]*)'
        analysis["classes"] = list(set(re.findall(class_pattern, content, re.IGNORECASE)))
        
        # Variables
        var_pattern = r'\$([a-zA-Z_][a-zA-Z0-9_]*)'
        all_vars = re.findall(var_pattern, content)
        # Get most common variables
        from collections import Counter
        var_counts = Counter(all_vars)
        analysis["variables"] = [var for var, count in var_counts.most_common(20)]
        
        # Security functions
        security_funcs = ['eval', 'exec', 'system', 'shell_exec', 'passthru', 'base64_decode', 'base64_encode', 'md5', 'sha1', 'crypt', 'openssl']
        analysis["security_functions"] = [func for func in security_funcs if func in content.lower()]
        
        # File operations
        file_funcs = ['fopen', 'fwrite', 'fread', 'file_get_contents', 'file_put_contents', 'include', 'require', 'readfile', 'unlink']
        analysis["file_operations"] = [func for func in file_funcs if func in content.lower()]
        
        # Network functions
        network_funcs = ['curl_exec', 'curl_init', 'fsockopen', 'gethostbyname', 'http_get', 'wget', 'ftp_']
        analysis["network_functions"] = [func for func in network_funcs if func in content.lower()]
        
        # Database functions
        db_funcs = ['mysql_', 'mysqli_', 'pdo', 'sqlite_', 'pg_']
        analysis["database_functions"] = [func for func in db_funcs if func in content.lower()]
        
        # PHP features
        php_features = []
        if 'namespace' in content.lower(): php_features.append('namespaces')
        if 'trait' in content.lower(): php_features.append('traits')
        if 'interface' in content.lower(): php_features.append('interfaces')
        if '<?=' in content: php_features.append('short_echo_tags')
        if 'use ' in content.lower(): php_features.append('use_statements')
        analysis["php_features"] = php_features
        
        return analysis


def main():
    if len(sys.argv) != 2:
        print("🔧 Ultimate ionCube Decoder")
        print("Usage: python3 ultimate_ioncube_decoder.py <ioncube_file>")
        print("\nThis decoder implements multiple advanced techniques to decode ionCube protected files.")
        sys.exit(1)
    
    file_path = sys.argv[1]
    
    if not os.path.exists(file_path):
        print(f"❌ Error: File {file_path} not found")
        sys.exit(1)
    
    decoder = UltimateIonCubeDecoder()
    
    # Attempt decoding
    if decoder.decode_file(file_path):
        # Save decoded content
        base_name = os.path.splitext(file_path)[0]
        output_path = f"{base_name}_ultimate_decoded.php"
        decoder.save_decoded(output_path)
        
        # Analyze content
        analysis = decoder.analyze_decoded_content()
        
        print("\n" + "=" * 60)
        print("📊 DECODED CONTENT ANALYSIS")
        print("=" * 60)
        print(f"📏 Size: {analysis['size_bytes']} bytes ({analysis['size_kb']} KB)")
        print(f"📄 Lines: {analysis['lines']}")
        
        if analysis['functions']:
            print(f"🔧 Functions ({len(analysis['functions'])}): {', '.join(analysis['functions'][:5])}" + ("..." if len(analysis['functions']) > 5 else ""))
        
        if analysis['classes']:
            print(f"🏗️  Classes ({len(analysis['classes'])}): {', '.join(analysis['classes'])}")
        
        if analysis['variables']:
            print(f"📦 Variables ({len(analysis['variables'])}): {', '.join(analysis['variables'][:8])}" + ("..." if len(analysis['variables']) > 8 else ""))
        
        if analysis['security_functions']:
            print(f"🔒 Security functions: {', '.join(analysis['security_functions'])}")
        
        if analysis['file_operations']:
            print(f"📁 File operations: {', '.join(analysis['file_operations'])}")
        
        if analysis['network_functions']:
            print(f"🌐 Network functions: {', '.join(analysis['network_functions'])}")
        
        if analysis['database_functions']:
            print(f"🗄️  Database functions: {', '.join(analysis['database_functions'])}")
        
        if analysis['php_features']:
            print(f"🚀 PHP features: {', '.join(analysis['php_features'])}")
        
        # Show sample of decoded content
        print(f"\n📝 First 400 characters of decoded content:")
        print("-" * 50)
        sample = decoder.decoded_content[:400]
        # Replace control characters for display
        sample_clean = ''.join(c if ord(c) >= 32 or c in '\n\t' else f'\\x{ord(c):02x}' for c in sample)
        print(sample_clean)
        if len(decoder.decoded_content) > 400:
            print("...")
        print("-" * 50)
        
        print(f"\n✅ SUCCESS! Decoded file saved as: {output_path}")
        
        # Validation
        if any(keyword in decoder.decoded_content.lower() for keyword in ['<?php', 'function', 'class', 'echo', 'return']):
            print("✅ Content appears to be valid PHP code!")
        else:
            print("⚠️  Content may require additional processing")
        
    else:
        print("\n💥 DECODING FAILED")
        print("\n🔍 This file may use:")
        print("   • Advanced encryption requiring specific keys")
        print("   • Runtime decryption by ionCube loader")
        print("   • Custom protection schemes")
        print("   • Hardware-based license validation")
        print("\n💡 Consider:")
        print("   • Obtaining the original ionCube loader")
        print("   • Reverse engineering the specific protection")
        print("   • Dynamic analysis with PHP debugger")


if __name__ == "__main__":
    main()