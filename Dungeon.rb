class Dungeon
	attr_accessor :player

	def initialize(player_name)
		@player = Playernew(player_name)
		@rooms = []
	end
end