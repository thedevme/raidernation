object @player

attributes :name, :college, :age, :positions
attributes :pos, :if => QB { puts "this player is a QB" }

child :positions do 
	attributes :player_position, :depth_position
end

child :player_stats do 
	attributes :passing_att, :passing_comp
end