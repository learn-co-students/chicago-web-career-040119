class Pet < Animal
  attr_reader :name, :breed
  attr_accessor :mood
  def initialize(name, breed)

    @name = name
    @mood = "nervous"
    @breed = breed
  end

  def speak
    "I say "
  end

  def pet
    puts "inheritance is funky"
  end
end
