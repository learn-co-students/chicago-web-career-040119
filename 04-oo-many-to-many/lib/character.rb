class Character
  attr_reader :name, :super_name

  ALL = []
  # ALL = nil this will break don't do this

  def initialize(name, super_name)
    @name = name
    @super_name = super_name

    ALL << self
  end

  def movies
    #what movies was in?
    appearances.map do |app|
      app.movie
    end
  end


  def star_in_movie(movie, leading_role)
    Appearance.new(self, movie, leading_role)
  end

  def self.all
    ALL
  end

  def self.most_movies
    char = ALL.max_by do |character|
      character.appearances.count
    end

    puts "Our character with the most movies is #{char.name}, with #{char.appearances.count} appearances!"
  end

  def self.most_leading_roles
    char = ALL.max_by do |character|
      character.leading_appearances.count
    end

    puts "Our character with the most leading roles is #{char.name}, with #{char.leading_appearances.count} leading appearances!"
  end

  def leading_appearances
    appearances.select do |app|
      app.leading_role
    end
  end


  def appearances
    Appearance.all.select do |app|
      app.character == self
    end
  end
end
