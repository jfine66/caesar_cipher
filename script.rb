def caesar_cipher(str, number)
    words = str.split
    changed_words = words.map{|word| encrypt(word, number)}
    print changed_words.join(' ')
  end
  
  
  def encrypt(word, number)
    alphabet = ('a'..'z').to_a
    uppercase_alphabet = ('A'..'Z').to_a
    new_str = ""
    word.each_char do |char|
      if alphabet.include?(char) == false && uppercase_alphabet.include?(char) == false
        new_str += char
      elsif char.upcase == char
        new_str += uppercase_alphabet[(uppercase_alphabet.index(char) + number) % 26]
      elsif char.downcase == char
        new_str += alphabet[(alphabet.index(char) + number) % 26]
      end
    end
    new_str
  end
  