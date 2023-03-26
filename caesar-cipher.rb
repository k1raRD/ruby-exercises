#!ruby

  def cesar_chipher(message, num, result = '')
    message.each_char do |char|
      # Check if is less than 91 to know if is upcase or downcase
      base = char.ord < 91 ? 65 : 97
      # Modifies Lowercase & Uppercase
      if char.ord.between?(65, 90) || char.ord.between?(97, 122)
        rotation = (((char.ord - base) + num) % 26) + base
        result += rotation.chr
        # Keeps spaces & punctuation
      else
        result += char
      end
    end
    result
  end


puts cesar_chipher("What a string!", 5)
