class DepthChartUpdater

	OFFENSIVE_POSITIONS = %w{LWR TE LT LG C RG RT RWR QB FB RB}
	DEFENSIVE_POSITIONS = %w{LDE LDT RDT RDE WLB MLB SLB LCB SS FS RCB}
	SPECIAL_TEAM_POSITIONS = %w{PK P H PR KR LS}

	def setPlayerPosition(name, position, depth)
		# playerNameArray = 
		# puts name
		name =~ /(\w+)\s(.*)/
		name     = "#{$2}, #{$1}"
		nickname = "#{$1} #{$2}"

		pID = SecureRandom.uuid
        arrKeys = pID.split("-")
		player = Roster.where("full_name = ?", name).first
# 		or nickname = ?, nickname
		
		if player
			matched_position = player.positions.where(:player_position => position).first
			
			if matched_position
				puts "updating #{name} #{position}"
				matched_position.update_attributes(:depth_position => depth)
			else
				puts "creating #{name} #{position}"

				player.positions.create(:depth_position => depth, :player_position => position, :short_id => arrKeys.last)
			end
		else
			# No player matching name or nickname, do what we need here, create?
		end
	end


	def parsePage(url, position_abbreviations)
		# puts url
		offense = Nokogiri::HTML(open(url)) 
		offense.css("div.mod-content").each do |item|
			players = item.css("tr")
			
			playerdata = players.css('tr')
			# puts "length is #{playerdata.length}"
			if playerdata.length != 0 
				positionCount = 0;
				depthObject = playerdata.css('tr')[2..-1]
				
				depthObject.each do |item|
					y = 0
					positionCount += 1
					position = position_abbreviations[positionCount-1]
					item.css('td').each do |player|

						playerName = player.css("a").text
						# puts playerName

						playerPosition = position;
						y += 1

						case y
							when 2 then 
								
								
								if playerName != ""
									setPlayerPosition(playerName, playerPosition, 1)
								end

							when 3 then 
								if playerName != "" 
									setPlayerPosition(playerName, playerPosition, 2)
								end

							when 4 then 
								if playerName != "" 
									setPlayerPosition(playerName, playerPosition, 3)
								end

							when 5 then 
								if playerName != "" 
									setPlayerPosition(playerName, playerPosition, 4)
								end
						end
					end
				end
			end
		end
	end

	def update
		parsePage("http://espn.go.com/nfl/team/depth/_/name/oak", OFFENSIVE_POSITIONS)
		parsePage("http://espn.go.com/nfl/team/depth/_/name/oak/formation/4-3-defense", DEFENSIVE_POSITIONS)
		parsePage("http://espn.go.com/nfl/team/depth/_/name/oak/formation/special-teams", SPECIAL_TEAM_POSITIONS) 
	end
end
