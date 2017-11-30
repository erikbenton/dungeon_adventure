
require_relative "Player.rb"
require_relative "Room.rb"

class Dungeon
	attr_accessor :player

	def initialize(player_name)
		@player = Player.new(player_name)
		@rooms = []
	end

	def add_room(reference, name, description, connections)
		@rooms.push(Room.new(reference, name, description, connections))
	end

	def start(location)
		@player.location = location
		show_current_description
	end

	def show_current_description
		puts find_room_in_dungeon(@player.location).full_description
	end

	def find_room_in_dungeon(reference)
		@rooms.detect {|room| room.reference == reference}		
	end

	def find_room_in_direction(direction)
		find_room_in_dungeon(@player.location).connections[direction]
	end

	def go(direction)
		if(find_room_in_direction(direction))
			puts "You go in " + direction.to_s
			@player.location = find_room_in_direction(direction)
		else
			puts "There is no room in that direction..."
		end
		show_current_description
	end

end