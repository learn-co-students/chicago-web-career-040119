class Book
  attr_reader :checked_out
  attr_accessor :title, :author

  ALL = []

  def initialize(title, author)
    @title = title
    @author = author
    @checked_out = false

    ALL << self
  end

  def check_out
    if @checked_out
      puts "nope someone else has this one :("
      nil
    else
      @checked_out = true
      puts "you got it dude"
      self
    end
  end

  def check_in
    @checked_out = false
    puts "thanks for returning this wonderful book in a timely manner"
  end

  def whats_my_self?
    self
  end

  def self.all
    ALL
  end

  # def self.reset
  # NOT ALLOWED Y'ALL
  #   ALL = []
  # end

  def self.available_books
    ALL.select do |book|
      !book.checked_out
    end
  end

  def self.find_by_title(title)
    ALL.find do |book|
      book.title == title
    end
  end

  # def self.authors
  #   ALL.map do |book|
  #     book.author
  #   end.uniq
  # end

  # def self.authors
  #   ALL.map { |book|
  #     book.author
  #    }.uniq
  # end

  def self.authors
    ALL.map(&:author).uniq
  end

  #attr_reader :title is the same as
  # def title
  #   @title
  # end

  #attr_writer :title gives you the same functionality as
  # def title=(new_title)
  #   @title = new_title
  # end

  #attr_accessor gives you both

end
