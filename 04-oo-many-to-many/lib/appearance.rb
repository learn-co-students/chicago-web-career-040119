class Appearance
  attr_reader :leading_role
  attr_accessor :character, :movie

  ALL = []

  def initialize(character, movie, leading_role)
    @character = character
    @movie = movie
    @leading_role = leading_role

    ALL << self
  end

  def self.all
    ALL
  end
end
