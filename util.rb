# converts a hexidecimal string to a string ex: "68656c6c6f" -> "hello"
def hex_to_str(h)
  [h].pack('H*')
end

# converts a string to a hexadecimal string ex: "hello" -> "68656c6c6f"
def str_to_hex(s)
  s.bytes.map{ |b| "%02x" % b }.join
end

# returns a string which is the byte-wise xor of two strings, s1 and s2
def str_xor(s1, s2)
  if s1.length != s2.length:
    minlen = [s1, s2].map(&:length).min
    s1 = s1[0...minlen]
    s2 = s2[0...minlen]
  end
  s1.bytes.zip(s2.bytes).map{ |b1, b2| b1 ^ b2 }.map(&:chr).join
end

# converts a character to its byte value, ex: 'a' -> 97
def ord(char)
  char.bytes.first
end
