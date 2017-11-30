require_relative "Dungeon.rb"

#Creating a Dungeon instance
#With player -> "Erik"
my_dungeon = Dungeon.new("Erik")

#Adding rooms to the dungeon
my_dungeon.add_room(:largecave, "Large Cave", "a large cavernous cave", {:west => :smallcave})
my_dungeon.add_room(:smallcave, "Small Cave", "a small, claustrophobic cave", {:east => :largecave})

#Start the dungeon by placing the player in the large cave
my_dungeon.start(:largecave)

input = ""

while input.downcase != "exit"
	puts "Where would you like to go (east, west, north, south)?"
	input = gets.chomp.downcase
	if input.downcase != "exit"
		my_dungeon.go(input.to_sym)
	end
end