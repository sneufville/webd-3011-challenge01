# Course: WEBD-3011 Agile Fullstack Dev
# name: Simon Neufville
# U1 - Intro to Ruby

ghosts = [
  {:name => "Inky", :loves => "reindeers", :age => 4, :net_worth => 25},
  {:name => "Pinky", :loves => "garden tools", :age => 5, :net_worth => 14},
  {:name => "Blinky", :loves => "ninjas", :age => 7, :net_worth => 18.03},
  {:name => "Clyde", :loves => "yarn", :age => 6, :net_worth => 0}
]

ghosts.each do |ghost|
  ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
  ghost_info += "loves #{ghost[:loves]} and "
  ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
  puts ghost_info
end
