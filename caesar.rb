class Caesar
  def self.encipher(shift, message)
    apply_algorithm(:encipher, shift, message)
  end
  def self.decipher(shift, message)
    apply_algorithm(:decipher, shift, message)
  end

  private

  def self.apply_algorithm(direction, shift, message)
    letters = %w{A B C D E F G H I J K L M N O P Q R S T U V W X Y Z}
      message.upcase.split(//).map do |letter|
      if letters.include?(letter)
        shift = direction == :encipher ? shift : -shift
        letters.rotate(shift)[letters.index(letter)]
      else
        letter
      end
    end.join
  end
end
