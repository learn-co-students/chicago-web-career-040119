class Movie
  attr_reader :title, :year

  ALL = []

  def initialize(title, year)
    @title = title
    @year = year

    ALL << self
  end

  def characters
    #who was in this movie?
    appearances.map do |app|
      app.character
    end
  end

  def self.all
    ALL
  end
 
  def appearances
    Appearance.all.select do |app|
      app.movie == self
    end
  end


end
