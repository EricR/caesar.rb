class Caesar
  def self.encrypt(shift, message)
    apply_algorithm(:encrypt, shift, message)
  end
  def self.decrypt(shift, message)
    apply_algorithm(:decrypt, shift, message)
  end

  private

  def self.apply_algorithm(direction, shift, message)
    letters = %w{A B C D E F G H I J K L M N O P Q R S T U V W X Y Z}
      message.upcase.split(//).map do |letter|
      if letters.include?(letter)
        shift = direction == :encrypt ? shift : -shift
        letters.rotate(shift)[letters.index(letter)]
      else
        letter
      end
    end.join
  end
end
