class Fish < Pet

  def initialize(name, breed)
    super(name, breed, false, 0)
    @aquatic = true

  end

  def speak
    super + "blubblub"
  end
end
