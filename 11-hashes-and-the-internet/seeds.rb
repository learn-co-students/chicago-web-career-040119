require 'rest-client'
require 'json'
require 'pry'
url = 'https://www.googleapis.com/books/v1/volumes?q=ruby+programming'
class Book
  attr_reader :title, :authors, :published_date
  def initialize(title, authors, published_date)
    @title = title
    @authors = authors
    @published_date = published_date
  end


end

def get_data(url)
  response = RestClient.get url
  JSON.parse(response)
end

def create_books(json)
  json["items"].map do |item|
    book_data = item["volumeInfo"]
    Book.new(book_data["title"], book_data["authors"], book_data["publishedDate"])
  end
end

response = get_data(url)
books = create_books(response)
binding.pry
