class StatsUpdater

	def update
		url = "http://www.raiders.com/team/statistics.html"
		
		getQBStats(url, ".team-stats-passing tr")
		getRushingStats(url, ".team-stats-rushing tr")
		getReceivingStats(url, ".team-stats-receiving tr")
		getFieldGoalStats(url, ".team-stats-fieldgoals tr")
		getPuntingStats(url, ".team-stats-punting tr")
		getPuntReturnStats(url, ".team-stats-pointreturn tr")
		getKickReturnStats(url, ".team-stats-kickreturns tr")
		getDefenseStats(url, ".team-stats-defense tr")
		getInterceptionsStats(url, ".team-stats-interceptions tr")
	end

	def getQBStats(url, css)
		
		doc = Nokogiri::HTML(open(url))
		
		doc.css(css)[2..-1].each_with_index do |item, i|

				playerName = item.css("td")[0].text
				playerName =~ /(\w+)\s(.*)/
				playerName = "#{$2}, #{$1}"

				objPlayer = Roster.where("full_name = ?", playerName).first

				item.css("td").each_with_index do |player, j|
					if objPlayer
						case j
							when 3  then  objPlayer.update_attributes(:passing_yd => player.text)
							when 6  then  objPlayer.update_attributes(:passing_td => player.text)
							when 8  then  objPlayer.update_attributes(:passing_int => player.text)
							when 13 then  objPlayer.update_attributes(:passing_rtg => player.text)
						end
					end
				end

			puts "================"
		end

	end

	def getRushingStats(url, css)
		doc = Nokogiri::HTML(open(url))
		doc.css(css)[2..-1].each_with_index do |item, i|
		
			playerName = item.css("td")[0].text

			playerName =~ /(\w+)\s(.*)/
			playerName = "#{$2}, #{$1}"

			objPlayer = Roster.where("full_name = ?", playerName).first

			item.css("td").each_with_index do |player, j|
				if objPlayer
					case j
						when 1  then  objPlayer.player_stats[0].update_attributes(:rushing_att => player.text)
						when 2  then  objPlayer.player_stats[0].update_attributes(:rushing_yd => player.text)
						when 3  then  objPlayer.player_stats[0].update_attributes(:rushing_avg => player.text)
						when 5  then  objPlayer.player_stats[0].update_attributes(:rushing_td => player.text)
					end
				end
			end
		end
	end

	def getReceivingStats(url, css)
		doc = Nokogiri::HTML(open(url))
		doc.css(css)[2..-1].each_with_index do |item, i|
			
			item.css("td").each_with_index do |player, j|
				case j
					when 0 then puts "player name: #{player.text}"
					when 1 then puts "rec: #{player.text}"
					when 2 then puts "yds: #{player.text}"
					when 3 then puts "avg: #{player.text}"
					when 5 then puts "td: #{player.text}"
				end
			end

			playerName = item.css("td")[0].text

			playerName =~ /(\w+)\s(.*)/
			playerName = "#{$2}, #{$1}"

			objPlayer = Roster.where("full_name = ?", playerName).first

			item.css("td").each_with_index do |player, j|
				if objPlayer	
					case j
						when 1  then  objPlayer.player_stats[0].update_attributes(:rec => player.text)
						when 2  then  objPlayer.player_stats[0].update_attributes(:rec_yd => player.text)
						when 3  then  objPlayer.player_stats[0].update_attributes(:rec_yd_avg => player.text)
						when 5  then  objPlayer.player_stats[0].update_attributes(:rec_td => player.text)
					end
				end
			end
		end
	end

	def getFieldGoalStats(url, css)
		doc = Nokogiri::HTML(open(url))
		doc.css(css)[2..-3].each do |item|

			kick1Att = 0;
			kick1Made = 0;
			kick2Att = 0;
			kick2Made = 0;
			kick3Att = 0;
			kick3Made = 0;
			kick4Att = 0;
			kick4Made = 0;
			kick5Att = 0;
			kick5Made = 0;

			playerName = item.css("td")[0].text

			playerName =~ /(\w+)\s(.*)/
			playerName = "#{$2}, #{$1}"

			objPlayer = Roster.where("full_name = ?", playerName).first

			item.css("td").each_with_index do |player, j|
				if objPlayer

					case j
						when 1 then puts player.text
						when 2 then puts player.text
						when 3 then puts player.text
						when 4 then puts player.text
						when 5 then puts player.text
						when 6 then puts player.text
						when 7 then puts player.text
						when 8 then puts player.text
						when 9 then puts player.text
						when 10 then puts player.text
					end



					case j
						when 1  then  objPlayer.player_stats[0].update_attributes(:fg_att_range1 => player.text)
						when 2  then  objPlayer.player_stats[0].update_attributes(:fg_made_range1 => player.text)
						when 3  then  objPlayer.player_stats[0].update_attributes(:fg_att_range2 => player.text)
						when 4  then  objPlayer.player_stats[0].update_attributes(:fg_made_range2 => player.text)
						when 5  then  objPlayer.player_stats[0].update_attributes(:fg_att_range3 => player.text)
						when 6  then  objPlayer.player_stats[0].update_attributes(:fg_made_range3 => player.text)
						when 7  then  objPlayer.player_stats[0].update_attributes(:fg_att_range4 => player.text)
						when 8  then  objPlayer.player_stats[0].update_attributes(:fg_made_range4 => player.text)
						when 9  then  objPlayer.player_stats[0].update_attributes(:fg_att_range5 => player.text)
						when 10  then  objPlayer.player_stats[0].update_attributes(:fg_made_range5 => player.text)
					end
				end
			end
		end
	end

	def getPuntingStats(url, css)
		doc = Nokogiri::HTML(open(url))
		doc.css(css)[2..-3].each_with_index do |item, i|
			
			playerName = item.css("td")[0].text

			playerName =~ /(\w+)\s(.*)/
			playerName = "#{$2}, #{$1}"

			objPlayer = Roster.where("full_name = ?", playerName).first

			item.css("td").each_with_index do |player, j|
				if objPlayer
					case j
						when 1  then  objPlayer.player_stats[0].update_attributes(:punt_att => player.text)
						when 2  then  objPlayer.player_stats[0].update_attributes(:punt_avg => player.text)
						when 3  then  objPlayer.player_stats[0].update_attributes(:punt_long => player.text)
						when 5  then  objPlayer.player_stats[0].update_attributes(:punt_in20 => player.text)
					end
				end
			end

			puts "================"
		end
	end

	def getPuntReturnStats(url, css)
		
		doc = Nokogiri::HTML(open(url))
		
		doc.css(css)[2..-3].each_with_index do |item, i|

			playerName = item.css("td")[0].text
			playerName =~ /(\w+)\s(.*)/
			playerName = "#{$2}, #{$1}"

			objPlayer = Roster.where("full_name = ?", playerName).first

			item.css("td").each_with_index do |player, j|
				# puts "stats: #{objPlayer.player_stats}"

				if objPlayer
					case j
						when 1  then  objPlayer.player_stats[0].update_attributes(:punt_returns => player.text)
						when 3  then  objPlayer.player_stats[0].update_attributes(:punt_return_avg => player.text)
						when 4  then  objPlayer.player_stats[0].update_attributes(:punt_return_lg => player.text)
						when 5  then  objPlayer.player_stats[0].update_attributes(:punt_return_td => player.text)
					end
				end
			end
			puts "================"
		end
	end

	def getKickReturnStats(url, css)
		doc = Nokogiri::HTML(open(url))
		doc.css(css)[2..-3].each_with_index do |item, i|
			
			playerName = item.css("td")[0].text
			playerName =~ /(\w+)\s(.*)/
			playerName = "#{$2}, #{$1}"

			objPlayer = Roster.where("full_name = ?", playerName).first

			item.css("td").each_with_index do |player, j|
				
				if objPlayer
					case j
						when 1  then  objPlayer.player_stats[0].update_attributes(:kick_returns => player.text)
						when 2  then  objPlayer.player_stats[0].update_attributes(:kick_return_yd => player.text)
						when 4  then  objPlayer.player_stats[0].update_attributes(:kick_return_lg => player.text)
						when 5  then  objPlayer.player_stats[0].update_attributes(:kick_return_td => player.text)
					end
				end
			end

			puts "================"
		end
	end

	def getDefenseStats(url, css)
		doc = Nokogiri::HTML(open(url))
		doc.css(css)[2..-3].each_with_index do |item, i|
			
			item.css("td").each_with_index do |player, j|
				case j
					when 0 then puts "player name: #{player.text}"
					when 1 then puts "total: #{player.text}"
					when 2 then puts "solo: #{player.text}"
					when 4 then puts "sck: #{player.text}"
				end
			end

			playerName = item.css("td")[0].text
			playerName =~ /(\w+)\s(.*)/
			playerName = "#{$2}, #{$1}"
			nickname = "#{$1} #{$2}"

			objPlayer = Roster.where("full_name = ?", playerName).first

			item.css("td").each_with_index do |player, j|
				
				if objPlayer
					if objPlayer.pos != "G" && objPlayer.pos != "C" && objPlayer.pos != "OL" && objPlayer.pos != "T"
						case j
							when 1  then  objPlayer.player_stats[0].update_attributes(:tackles => player.text)
							when 5  then  objPlayer.player_stats[0].update_attributes(:fumbles => player.text)
							when 4  then  objPlayer.player_stats[0].update_attributes(:sacks => player.text)
						end
					end
				end
			end



			puts "================"
		end
	end

	def getInterceptionsStats(url, css)
		doc = Nokogiri::HTML(open(url))
		doc.css(css)[2..-3].each_with_index do |item, i|
			
			playerName = item.css("td")[0].text
			playerName =~ /(\w+)\s(.*)/
			playerName = "#{$2}, #{$1}"

			objPlayer = Roster.where("full_name = ?", playerName).first

			item.css("td").each_with_index do |player, j|
				 puts player

				if objPlayer
					case j
						when 1  then  objPlayer.player_stats[0].update_attributes(:int => player.text)
					end
				end
			end

			puts "================"
		end
	end
end