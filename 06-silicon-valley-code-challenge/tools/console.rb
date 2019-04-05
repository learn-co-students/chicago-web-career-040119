require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

we = Startup.new("We", "Adam Neumann", "Elevate the World's Consciousness")
we.pivot("Take over the world", "WeRule")

apple = Startup.new("Apple", "Steve Jobs", "Make steve enough money so he has infinite turtlenecks")

grubhub = Startup.new("grubhub", "someone", "Give u food")

booch = Startup.new("Dr. Brew's Kombucha", "Dr. Brew", "get u addicted to booch")

cuban = VentureCapitalist.new("Mark Cuban", 1000000000000)
rishi = VentureCapitalist.new("Rishi", 1)
noa = VentureCapitalist.new("Noa", 3000000001)

booch.sign_contract(rishi, "Pre-Seed", 1)
booch.sign_contract(cuban, "Series A", 1000000)
booch.sign_contract(noa, "Series B", 2000000000)
noa.offer_contract(we, "Series C", 1.2)
rishi.offer_contract(grubhub, "Series A", 0.5)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
