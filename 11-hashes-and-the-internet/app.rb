url = 'https://www.googleapis.com/books/v1/volumes?q=ruby+programming'

require 'rest-client'
require 'json'

response = RestClient.get url
parsed = JSON.parse(response)
require 'pry'
binding.pry
