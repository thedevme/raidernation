require 'securerandom'
class RosterUpdater

	def update(date)
		url = "http://www.raiders.com/team/roster.html"
	    doc = Nokogiri::HTML(open(url))

	    updateTime = date
	    puts doc.css("tbody")[0].css("tr").count

	    # doc.css("tbody")[0].css("tr").each
	    # doc.css("tbody tr").each do |item|
	    doc.css("tbody")[0].css("tr").each do |item|

	      name = item.at_css(".col-name span").text.rstrip
	      player = Player.where(:name => name).first

	      if player

			puts "player exists #{player.name}"
			playerName = item.at_css(".col-name span").text.rstrip
			playerNameArray = playerName.split(", ")

		    player.update_attributes(:name => item.at_css(".col-name span").text.rstrip)
	        player.update_attributes(:no => item.at_css(".col-jersey").text)
	        player.update_attributes(:pos => item.at_css(".col-position").text)
	        player.update_attributes(:height => item.at_css(".col-height").text)
	        player.update_attributes(:weight => item.at_css(".col-weight").text)
	        player.update_attributes(:age => item.at_css(".col-bd").text)
	        player.update_attributes(:last_update => updateTime)
	        playerExp = item.at_css(".col-exp").text.lstrip 
	        player.update_attributes(:exp => playerExp.rstrip)
	        player.update_attributes(:college => item.at_css(".col-college").text)
	        player.update_attributes(:first_name => playerNameArray[1].rstrip)
	        player.update_attributes(:last_name => playerNameArray[0].rstrip)
	        player.update_attributes(:image => "#{playerNameArray[0]}_#{playerNameArray[1]}_thumb.png")

	      else
	      	puts "create new player #{name}"

	      	p = Player.new
	      	pID = SecureRandom.uuid
            arrKeys = pID.split("-")
 
            p.player_id = arrKeys.last

			playerName = item.at_css(".col-name span").text.rstrip
			playerNameArray = playerName.split(", ")
			playerExp = item.at_css(".col-exp").text.lstrip 
			p.name = item.at_css(".col-name span").text.rstrip
			p.first_name = playerNameArray[1].rstrip
			p.last_name = playerNameArray[0].rstrip
	        p.last_update = updateTime
			p.no = item.at_css(".col-jersey").text
			p.pos = item.at_css(".col-position").text
			p.height = item.at_css(".col-height").text
			p.weight = item.at_css(".col-weight").text
			p.age = item.at_css(".col-bd").text
			p.exp = playerExp.rstrip
			p.college = item.at_css(".col-college").text
			p.image = "#{playerNameArray[0]}_#{playerNameArray[1]}_thumb.png"

			p.save

	      	createStats(p)

	      end
	    end
	end

	def createStats(player)
		playerStat = PlayerStat.new

        playerStat.player_id = player.id
		playerStat.year = "2012"
        playerStat.passing_att = "0"
        playerStat.passing_comp = "0"
        playerStat.passing_comp_pct = "0"
        playerStat.yds_per_att = "0"
        playerStat.passing_yd = "0"
        playerStat.passing_td = "0"
        playerStat.passing_td_pct = "0"
        playerStat.passing_int = "0"
        playerStat.passing_int_pct = "0"
        playerStat.passing_lg = "0"
        playerStat.sacked = "0"
        playerStat.sacked_yd_lost = "0"
        playerStat.passing_rtg = "0"

        # RUSHING STATS
        playerStat.rushing_att = "0"
        playerStat.rushing_yd = "0"
        playerStat.rushing_lg = "0"
        playerStat.rushing_avg = "0"
        playerStat.rushing_td = "0"

        # RECEIVING STATS
        playerStat.rec = "0"
        playerStat.rec_yd = "0"
        playerStat.rec_yd_avg = "0"
        playerStat.rec_lg = "0"
        playerStat.rec_td = "0"

        # KICKER STATS
        playerStat.fg_made_range1 = "0"
        playerStat.fg_att_range1 = "0"
        playerStat.fg_made_range2 = "0"
        playerStat.fg_att_range2 = "0"
        playerStat.fg_made_range3 = "0"
        playerStat.fg_att_range3 = "0"
        playerStat.fg_made_range4 = "0"
        playerStat.fg_att_range4 = "0"
        playerStat.fg_made_range5 = "0"
        playerStat.fg_att_range5 = "0"
        playerStat.fg_pct = "0"
        playerStat.fg_totals = "0"

        # PUNTER STATS
        playerStat.punt_att = "0"
        playerStat.punt_blk = "0"
        playerStat.punt_tbk = "0"
        playerStat.punt_in20 = "0"
        playerStat.punt_avg = "0"
        playerStat.punt_long = "0"

        # PUNT RETURN STATS
        playerStat.punt_returns = "0"
        playerStat.punt_return_fc = "0"
        playerStat.punt_return_td = "0"
        playerStat.punt_return_lg = "0"
        playerStat.punt_return_avg = "0"

        # KICK RETURN STATS
        playerStat.kick_return_lg = "0"
        playerStat.kick_return_td = "0"
        playerStat.kick_return_yd = "0"
        playerStat.kick_return_avg = "0"
        playerStat.kick_returns = "0"

        # DEFENSIVE STATS
        playerStat.sacks = "0"
        playerStat.total_tackles = "0"
        playerStat.solo_tackles = "0"
        playerStat.assists = "0"
        playerStat.int = "0"
        playerStat.int_yd = "0"
        playerStat.int_yd_avg = "0"
        playerStat.int_td = "0"
        playerStat.int_lg = "0"
        playerStat.fumbles = "0"
        playerStat.tackles = "0"

        playerStat.save
	end

	def removePlayers(updatePlayerdate)
		puts Player.all.count
		Player.delete_all(["last_update < ?", updatePlayerdate])

	    # array.each do |player|
	    # 	puts player.last_update.equal?(updatePlayerdate)

	    # 	if player.last_update === updatePlayerdate

	    # 	else
    	# 		player.destroy
    	# 		puts "destroy #{player.name} - #{player.last_update} - #{updatePlayerdate}"
	    # 	end
	    # end
	end
end