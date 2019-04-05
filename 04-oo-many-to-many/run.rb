require 'pry'
require_relative 'lib/character'
require_relative 'lib/movie'
require_relative 'lib/appearance'


im = Character.new('Tony', 'Iron Man')
hulk = Character.new('Bruce', 'Hulk')
am = Character.new('Scott', 'Ant-Man')
bw = Character.new('Natasha', 'Black Widow')
r = Character.new('Rocket', 'Rocket Racoon')
cm = Character.new('Carol', 'Captain Marvel')
cap = Character.new('Steve', 'Captain America')
stan = Character.new('Stan Lee', 'Cameo King')

im1 = Movie.new('Iron Man', 2008)
aou = Movie.new('Age of Ultron', 2015)
cw = Movie.new('Civil War', 2016)
iw = Movie.new('Infinity War', 2018)
eg = Movie.new('Endgame', 2019)

im.star_in_movie(im1, true)
im.star_in_movie(aou, true)
im.star_in_movie(cw, false)
im.star_in_movie(iw, true)
im.star_in_movie(eg, true)

hulk.star_in_movie(aou, true)
hulk.star_in_movie(iw, false)
hulk.star_in_movie(eg, false)

am.star_in_movie(cw, false)
am.star_in_movie(eg, true)

bw.star_in_movie(aou, true)
bw.star_in_movie(cw, false)
bw.star_in_movie(iw, true)
bw.star_in_movie(eg, true)

r.star_in_movie(iw, false)
r.star_in_movie(eg, true)

cm.star_in_movie(eg, true)

cap.star_in_movie(aou, true)
cap.star_in_movie(cw, true)
cap.star_in_movie(iw, false)
cap.star_in_movie(eg, true)

stan.star_in_movie(im1, true)
stan.star_in_movie(aou, true)
stan.star_in_movie(cw, true)
stan.star_in_movie(iw, true)
stan.star_in_movie(eg, true)

# Character.all


binding.pry #stops the current execution in its tracks
""

#Pry.start starts a new ruby shell
