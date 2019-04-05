require 'pry'
require_relative './user.rb'
require_relative './tweet.rb'

$noa = User.new("Noa")
$tweet1 = Tweet.new("hello", $noa)
$tweet2 = Tweet.new("how does twitter work?", $noa)
$cher = User.new("Cher")
$c_1 = Tweet.new("Something  is  amiss  with ipad", $cher)
$c_2 = Tweet.new("Can anyone c me", $cher)
$c_3 = Tweet.new("Oh SHIT \nGUMMY BEARS fk", $cher)

Pry.start
