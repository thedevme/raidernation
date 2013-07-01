class ScoreUpdater

	def update
		page = Nokogiri::HTML(open("http://www.raiders.com/schedule/season-schedule.html"))
		# page = Nokogiri::HTML(open("lib/schedule.html"))
	    page.css('div.season-state-container')[0].css('div.game').each do |item|

	        array = item.css('div.itm-wrp-5').css('div.game-info').css('div.item-date').css('div.half-date').text.split(/, /)
	        gameDate = "";
	        gameTime = "";

	        if array.count > 0 
	            array2 = array[1].split(/at /)
	            gameDate = array2[0].rstrip + "/2012"
	            # Date.strptime("31/01/2010", "%d/%m/%Y")
	            gameTime = array2[1]
	        else
	            gameDate = "10/07/2012"
	        end

	        objGame = Game.where(:game_date => Date.strptime(gameDate, "%m/%d/%Y"))
	        g = Game.new
	        g.game_date = Date.strptime(gameDate, "%m/%d/%Y")
	        g.game_time = gameTime
	        opponent = item.css('div.itm-wrp-5').css('div.game-info').css('div.opponent').css('div.opponent-name span').text
	        numOppLength = item.css('div.itm-wrp-5').css('div.game-info').css('div.opponent').css('div.opponent-name span').length
	        

	        if numOppLength > 0
	            opponent = opponent.gsub(/[^A-Za-z]/, ' ')
	            g.opponent = opponent.lstrip
	            # puts opponent
	        else
	            g.opponent = "Bye Week"
	            # puts opponent.lstrip
	        end

	        status = item.css('div.itm-wrp-5').css('div.game-info').css('div.stadium').css('div.stadium-game').text.gsub(/[^A-Za-z]/, '')
	        stadiumName = item.css('div.itm-wrp-5').css('div.game-info').css('div.stadium').css('div.stadium-name').text.gsub(/[^A-Za-z]/, ' ')
	        g.status = status
	        g.location = stadiumName.lstrip
	        
	        if item.css('div.itm-wrp-5').css('div.game-data').css('div.item-media').css('li')[0] != nil
	            g.tv = item.css('div.itm-wrp-5').css('div.game-data').css('div.item-media').css('li')[0].text
	        else
	            g.tv = "N/A"
	        end

	        numLength = item.css('div.itm-wrp-5').css('div.game-info').css('div.game-day-link').length
	        
	        if numLength == 1
	            g.raider_link = "http://www.raiders.com#{item.css('div.itm-wrp-5').css('div.game-info').css('div.game-day-link a')[0]['href']}"
	        else
	            g.raider_link = "No Link"
	        end

	        result = item.css('div.itm-wrp-5').css('div.game-info').css('div.item-score').css('span.win-loss').text
	        
	        if result =~ /([a-zA-Z]+)/
	            if result =~ /([Win])/ then g.result = "Win" end
	            if result =~ /([Loss])/ then g.result = "Loss" end
	        else
	            g.result = "-"
	        end

	        gameScore = item.css('div.itm-wrp-5').css('div.game-info').css('div.item-score').css('span.score').text.lstrip;
	        
	        gameScore.split(" - ")
	        scoreArray = gameScore.split(" - ")
	        puts scoreArray

	        if g.result == "Win" || g.result == "Loss"
	        	if g.result == "Loss" && status == "Home"
		        	g.home_score = scoreArray[1]
		        	g.away_score = scoreArray[0]
		        	puts "Oak losses at home #{scoreArray[1]} to #{opponent.lstrip} #{scoreArray[0]}"
		        end

		        if g.result == "Loss" && status == "Away"
		        	g.home_score = scoreArray[0]
		        	g.away_score = scoreArray[1]
		        	puts "Oak losses away #{scoreArray[1]} to #{opponent.lstrip} #{scoreArray[0]}"
		        end

		        if g.result == "Win" && status == "Home"
		        	g.home_score = scoreArray[0]
		        	g.away_score = scoreArray[1]
		        	puts "Oak wins at home #{scoreArray[0]} to #{opponent.lstrip} #{scoreArray[1]}"
		        end

		        if g.result == "Win" && status == "Away"
		        	g.home_score = scoreArray[1]
		        	g.away_score = scoreArray[0]
		        	puts "Oak wins away #{scoreArray[0]} to #{opponent.lstrip} #{scoreArray[1]}"
		        end
		    else
		    	g.home_score = 0
	            g.away_score = 0
		    end


	        if gameScore.empty?

	            g.home_score = 0
	            g.away_score = 0
	            # gameScoreFull = item.css('div.itm-wrp-5').css('div.game-info').css('div.item-score').css('span.score').text.lstrip
	        end

	        if objGame.empty?
	            puts "create game"
	            g.save
	        else
	            objGame[0].update_attributes(:result => g.result)
	            objGame[0].update_attributes(:game_date => g.game_date)
	            objGame[0].update_attributes(:raider_link => g.raider_link)
	            objGame[0].update_attributes(:location => g.location)
	            objGame[0].update_attributes(:home_score => g.home_score)
	            objGame[0].update_attributes(:away_score => g.away_score)
	            objGame[0].update_attributes(:status => g.status)
	            objGame[0].update_attributes(:game_time => g.game_time)
	            objGame[0].update_attributes(:tv => g.tv)
	            objGame[0].update_attributes(:opponent => g.opponent)
	            puts "update"
	        end
	    end
	end
end