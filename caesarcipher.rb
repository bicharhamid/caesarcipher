# Caesar's Cipher is a substitution cipher where each letter in the plaintext is shifted a certain number of places down or up the alphabet.
# For example, with a shift of 1, 'A' would be replaced by 'B', 'B' would become 'C', and so on.

# 1. Define a method `caesar_cipher` that takes two arguments: a string `text` and an integer `shift`.

def caesar_cipher(text, shift)
  alphabet_upper = ('A'..'Z').to_a
  alphabet_lower = ('a'..'z').to_a
  results = []
  # If Text is Uppercaase
  text.each_char do |char|
    if alphabet_upper.include?(char)
      index = alphabet_upper.index(char)
      new_index = (index + shift) % 26
      results << alphabet_upper[new_index]
    elsif alphabet_lower.include?(char)
      index = alphabet_lower.index(char)
      new_index = (index + shift) % 26
      results << alphabet_lower[new_index]
    else
      results << char
    end
  end
  cipher = results.join
  puts cipher
end

caesar_cipher('What a string!', 5)
