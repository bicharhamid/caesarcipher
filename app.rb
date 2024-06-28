# Caesar's Cipher is a substitution cipher where each letter in the plaintext is shifted a certain number of places down or up the alphabet.
# For example, with a shift of 1, 'A' would be replaced by 'B', 'B' would become 'C', and so on.

# 1. Define a method `caesar_cipher` that takes two arguments: a string `text` and an integer `shift`.
def caesar_cipher (text, shift)
# 2. Create an array `alphabet` containing all the letters of the alphabet.
  alphabet_upper = ('A'..'Z').to_a
  alphabet_lower = ('a'..'z').to_a
# 3. Initialize an empty array `ciphered_text` to store the shifted characters.
  ciphered_text = []
# 4. Iterate over each character in the `text`:
  text.each_char { |character|
    if alphabet_upper.include?(character)
      index = alphabet_upper.index(character)
      new_index = (index + shift) % 26
      ciphered_text << alphabet_upper[new_index]
    elsif alphabet_lower.include?(character)
      index = alphabet_lower.index(character)
      new_index = (index + shift) % 26
      ciphered_text << alphabet_lower[new_index]
    else
      ciphered_text << character
    end
  }
#    a. If the character is a letter:
#       i. Find the index of the character in the `alphabet` array.
#       ii. Calculate the new index by adding the `shift` to the current index and taking modulo 26 to handle wrap-around.
#       iii. Append the letter at the new index in the `alphabet` array to `ciphered_text`.
#    b. If the character is not a letter, append it to `ciphered_text` as is.
# 5. Join the `ciphered_text` array into a string and return it.
  ciphered_text_string = ciphered_text.join
  puts ciphered_text_string
end

caesar_cipher("What a string!", 5)
