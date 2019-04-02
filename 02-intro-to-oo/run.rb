require 'pry'
require_relative 'lib/book'

player = {
  player_name: "Alan Anderson",
  number: 0,
  shoe: 16,
  points: 22,
  rebounds: 12,
  assists: 12,
  steals: 3,
  blocks: 1,
  slam_dunks: 1
}

calvin_and_hobbes = {
  title: 'the essential calvin and hobbes',
  author: 'bill watterson'
}

poodr = {
  title: 'practical object oriented design in ruby',
  author: 'sandi metz'
}

instructors = [
  {name: 'Noa', hometown: 'Detroit, MI', age: 14},
  {name: 'Bruce', hometown: 'Brooklyn, NY', age: 65},
  {name: 'Rishi', hometwon: 'North Brunswick, NJ', age: 21}
]

mush = Book.new('mushrooms', 'nick moore')
cnh = Book.new('calvin and hobbes', 'bill watterson')
prog = Book.new('programming for mycologists', 'nick moore')

binding.pry
'bye'
