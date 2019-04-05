class Dog < Pet
  include Pettable
  def speak
    super + "bowwow"
  end

  def pet
    @mood = "happy"
    puts "Roof!"
    super
  end
end
