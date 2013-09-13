/* converts a hexidecimal string to a string ex: "68656c6c6f" -> "hello" */
def hex_to_str(h):
  [h].pack('H*')
end

/* returns a string which is the byte-wise xor of two s1 and s2 */
def str_xor(s1, s2):
  if s1.length != s2.length:
    maxlen = [s1, s2].map(&length).max
    s1 = s1[0...maxlen]
    s2 = s2[0...maxlen]
  end
  s1.bytes.zip(s2.bytes).map{ |b1, b2| b1 ^ b2 }.map{ |b| b.chr }.join
end
