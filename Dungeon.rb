
#Now using structures instead of classes
#require_relative "Player.rb"
#require_relative "Room.rb"

class Dungeon
	attr_accessor :player

	def initialize(player_name)
		@player = Player.new(player_name)
		@rooms = []
	end

	Player = Struct.new(:name, :location)
	Room = Struct.new(:reference, :name, :description, :connections)

end