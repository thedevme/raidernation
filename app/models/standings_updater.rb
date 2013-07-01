class StandingsUpdater

	def update
		page = Nokogiri::HTML(open("http://espn.go.com/nfl/standings")) 


        rank = 0
        objTeam = "";
		page.css("table").each do |item|

        nfceast = item.css("tr")[2..5]
        nfceast.css("tr").each do |details|
            y = 0
            t = Standing.new
            details.css('td').each do |team|  

            teamName = "";  
                y+=1
                
                t.division = "NFC East"
                t.display_order = 8
                t.division_rank = y
                t.conference = "NFC"

                case y
                    when 1 then t.display_name = team.css('a').text
                    when 2 then t.wins = team.text 
                    when 3 then t.losses = team.text
                    when 4 then t.ties = team.text
                    when 5 then t.pct = team.text
                    when 6 then t.home_record = team.text
                    when 7 then t.road_record = team.text
                    when 8 then t.division_record = team.text
                    when 9 then t.conference_record = team.text
                    when 10 then t.points_for = team.text
                    when 11 then t.points_allowed = team.text
                    when 12 then t.difference = team.text
                    when 13 then t.current_streak = team.text
                end

                objTeam = Standing.where(:display_name => t.display_name).last
                teamID = objTeam.abbr

                if objTeam == nil
                    
                    t.save
                else
                    objTeam.update_attributes(:wins => t.wins)
                    objTeam.update_attributes(:display_order => t.display_order)
                    objTeam.update_attributes(:losses => t.losses)
                    objTeam.update_attributes(:ties => t.ties)
                    objTeam.update_attributes(:pct => t.pct)
                    objTeam.update_attributes(:home_record => t.home_record)
                    objTeam.update_attributes(:road_record => t.road_record)
                    objTeam.update_attributes(:division_record => t.division_record)
                    objTeam.update_attributes(:conference_record => t.conference_record)
                    objTeam.update_attributes(:points_for => t.points_for)
                    objTeam.update_attributes(:points_allowed => t.points_allowed)
                    objTeam.update_attributes(:difference => t.difference)
                    objTeam.update_attributes(:current_streak => t.current_streak)
                    objTeam.update_attributes(:team_id => teamID)
                end

            end

                rank += 1
                objTeam.update_attributes(:division_rank => rank)
                puts "team #{t.display_name} rank #{rank}"
        end

        rank = 0
            objTeam = "";
        nfcsouth = item.css("tr")[12..15]
        nfcsouth.css("tr").each do |details|
            y = 0
            t = Standing.new

            details.css('td').each do |team|  

            teamName = "";  
                y+=1
                
                t.division = "NFC South"
                t.display_order = 7
                t.division_rank = y
                t.conference = "NFC"

                case y
                    when 1 then t.display_name = team.css('a').text
                    when 2 then t.wins = team.text 
                    when 3 then t.losses = team.text
                    when 4 then t.ties = team.text
                    when 5 then t.pct = team.text
                    when 6 then t.home_record = team.text
                    when 7 then t.road_record = team.text
                    when 8 then t.division_record = team.text
                    when 9 then t.conference_record = team.text
                    when 10 then t.points_for = team.text
                    when 11 then t.points_allowed = team.text
                    when 12 then t.difference = team.text
                    when 13 then t.current_streak = team.text
                end


                objTeam = Standing.where(:display_name => t.display_name).last
                teamID = objTeam.abbr

                if objTeam == nil
                    
                    t.save
                else
                    objTeam.update_attributes(:wins => t.wins)
                    objTeam.update_attributes(:display_order => t.display_order)
                    objTeam.update_attributes(:losses => t.losses)
                    objTeam.update_attributes(:ties => t.ties)
                    objTeam.update_attributes(:pct => t.pct)
                    objTeam.update_attributes(:home_record => t.home_record)
                    objTeam.update_attributes(:road_record => t.road_record)
                    objTeam.update_attributes(:division_record => t.division_record)
                    objTeam.update_attributes(:conference_record => t.conference_record)
                    objTeam.update_attributes(:points_for => t.points_for)
                    objTeam.update_attributes(:points_allowed => t.points_allowed)
                    objTeam.update_attributes(:difference => t.difference)
                    objTeam.update_attributes(:current_streak => t.current_streak)
                    objTeam.update_attributes(:team_id => teamID)
                end
            end


                rank += 1
                objTeam.update_attributes(:division_rank => rank)
                puts "team #{t.display_name} rank #{rank}"
        end




        rank = 0

            objTeam = "";
        nfcwest = item.css("tr")[17..20]
        nfcwest.css("tr").each do |details|
            y = 0
            t = Standing.new
            details.css('td').each do |team|  

            teamName = "";  
                y+=1
                
                t.division = "NFC West"
                t.display_order = 5
                t.division_rank = y
                t.conference = "NFC"

                case y
                    when 1 then t.display_name = team.css('a').text
                    when 2 then t.wins = team.text 
                    when 3 then t.losses = team.text
                    when 4 then t.ties = team.text
                    when 5 then t.pct = team.text
                    when 6 then t.home_record = team.text
                    when 7 then t.road_record = team.text
                    when 8 then t.division_record = team.text
                    when 9 then t.conference_record = team.text
                    when 10 then t.points_for = team.text
                    when 11 then t.points_allowed = team.text
                    when 12 then t.difference = team.text
                    when 13 then t.current_streak = team.text
                end


                objTeam = Standing.where(:display_name => t.display_name).last
                teamID = objTeam.abbr
                

                if objTeam == nil
                    
                    t.save
                else
                    objTeam.update_attributes(:display_order => t.display_order)
                    objTeam.update_attributes(:wins => t.wins)
                    objTeam.update_attributes(:losses => t.losses)
                    objTeam.update_attributes(:ties => t.ties)
                    objTeam.update_attributes(:pct => t.pct)
                    objTeam.update_attributes(:home_record => t.home_record)
                    objTeam.update_attributes(:road_record => t.road_record)
                    objTeam.update_attributes(:division_record => t.division_record)
                    objTeam.update_attributes(:conference_record => t.conference_record)
                    objTeam.update_attributes(:points_for => t.points_for)
                    objTeam.update_attributes(:points_allowed => t.points_allowed)
                    objTeam.update_attributes(:difference => t.difference)
                    objTeam.update_attributes(:current_streak => t.current_streak)
                    objTeam.update_attributes(:team_id => teamID)
                end
            end


                rank += 1
                objTeam.update_attributes(:division_rank => rank)
                puts "team #{t.display_name} rank #{rank}"
        end

        rank = 0
            objTeam = "";
        nfcnorth = item.css("tr")[7..10]
        nfcnorth.css("tr").each do |details|
            y = 0
            t = Standing.new
            details.css('td').each do |team| 

            teamName = "";  
                y+=1
                
                t.division = "NFC North"
                t.display_order = 6
                t.division_rank = y
                t.conference = "NFC"

                case y
                    when 1 then t.display_name = team.css('a').text
                    when 2 then t.wins = team.text 
                    when 3 then t.losses = team.text
                    when 4 then t.ties = team.text
                    when 5 then t.pct = team.text
                    when 6 then t.home_record = team.text
                    when 7 then t.road_record = team.text
                    when 8 then t.division_record = team.text
                    when 9 then t.conference_record = team.text
                    when 10 then t.points_for = team.text
                    when 11 then t.points_allowed = team.text
                    when 12 then t.difference = team.text
                    when 13 then t.current_streak = team.text
                end


                objTeam = Standing.where(:display_name => t.display_name).last
                teamID = objTeam.abbr
                

                if objTeam == nil
                    
                    t.save
                else
                    objTeam.update_attributes(:display_order => t.display_order)
                    objTeam.update_attributes(:wins => t.wins)
                    objTeam.update_attributes(:losses => t.losses)
                    objTeam.update_attributes(:ties => t.ties)
                    objTeam.update_attributes(:pct => t.pct)
                    objTeam.update_attributes(:home_record => t.home_record)
                    objTeam.update_attributes(:road_record => t.road_record)
                    objTeam.update_attributes(:division_record => t.division_record)
                    objTeam.update_attributes(:conference_record => t.conference_record)
                    objTeam.update_attributes(:points_for => t.points_for)
                    objTeam.update_attributes(:points_allowed => t.points_allowed)
                    objTeam.update_attributes(:difference => t.difference)
                    objTeam.update_attributes(:current_streak => t.current_streak)
                    objTeam.update_attributes(:team_id => teamID)
                end
            end


                rank += 1
                objTeam.update_attributes(:division_rank => rank)
                puts "team #{t.display_name} rank #{rank}"
        end




        rank = 0
            objTeam = "";
        afceast = item.css("tr")[23..26]
        afceast.css("tr").each do |details|
            y = 0
            t = Standing.new
            details.css('td').each do |team|  

            teamName = "";  
                y+=1
                
                t.division = "AFC East"
                t.display_order = 4
                t.division_rank = y
                t.conference = "AFC"

                case y
                    when 1 then t.display_name = team.css('a').text
                    when 2 then t.wins = team.text 
                    when 3 then t.losses = team.text
                    when 4 then t.ties = team.text
                    when 5 then t.pct = team.text
                    when 6 then t.home_record = team.text
                    when 7 then t.road_record = team.text
                    when 8 then t.division_record = team.text
                    when 9 then t.conference_record = team.text
                    when 10 then t.points_for = team.text
                    when 11 then t.points_allowed = team.text
                    when 12 then t.difference = team.text
                    when 13 then t.current_streak = team.text
                end


                objTeam = Standing.where(:display_name => t.display_name).last
                teamID = objTeam.abbr
                

                if objTeam == nil
                    
                    t.save
                else
                    objTeam.update_attributes(:display_order => t.display_order)
                    objTeam.update_attributes(:wins => t.wins)
                    objTeam.update_attributes(:losses => t.losses)
                    objTeam.update_attributes(:ties => t.ties)
                    objTeam.update_attributes(:pct => t.pct)
                    objTeam.update_attributes(:home_record => t.home_record)
                    objTeam.update_attributes(:road_record => t.road_record)
                    objTeam.update_attributes(:division_record => t.division_record)
                    objTeam.update_attributes(:conference_record => t.conference_record)
                    objTeam.update_attributes(:points_for => t.points_for)
                    objTeam.update_attributes(:points_allowed => t.points_allowed)
                    objTeam.update_attributes(:difference => t.difference)
                    objTeam.update_attributes(:current_streak => t.current_streak)
                    objTeam.update_attributes(:team_id => teamID)
                end
            end


                rank += 1
                objTeam.update_attributes(:division_rank => rank)
                puts "team #{t.display_name} rank #{rank}"
        end



        rank = 0
            objTeam = "";
        afcnorth = item.css("tr")[28..31]
        afcnorth.css("tr").each do |details|
            y = 0
            t = Standing.new
            details.css('td').each do |team|  

            teamName = "";  
                y+=1
                
                t.division = "AFC North"
                t.display_order = 2
                t.division_rank = y
                t.conference = "AFC"

                case y
                    when 1 then t.display_name = team.css('a').text
                    when 2 then t.wins = team.text 
                    when 3 then t.losses = team.text
                    when 4 then t.ties = team.text
                    when 5 then t.pct = team.text
                    when 6 then t.home_record = team.text
                    when 7 then t.road_record = team.text
                    when 8 then t.division_record = team.text
                    when 9 then t.conference_record = team.text
                    when 10 then t.points_for = team.text
                    when 11 then t.points_allowed = team.text
                    when 12 then t.difference = team.text
                    when 13 then t.current_streak = team.text
                end


                objTeam = Standing.where(:display_name => t.display_name).last
                teamID = objTeam.abbr
                

                if objTeam == nil
                    
                    t.save
                else
                    objTeam.update_attributes(:display_order => t.display_order)
                    objTeam.update_attributes(:wins => t.wins)
                    objTeam.update_attributes(:losses => t.losses)
                    objTeam.update_attributes(:ties => t.ties)
                    objTeam.update_attributes(:pct => t.pct)
                    objTeam.update_attributes(:home_record => t.home_record)
                    objTeam.update_attributes(:road_record => t.road_record)
                    objTeam.update_attributes(:division_record => t.division_record)
                    objTeam.update_attributes(:conference_record => t.conference_record)
                    objTeam.update_attributes(:points_for => t.points_for)
                    objTeam.update_attributes(:points_allowed => t.points_allowed)
                    objTeam.update_attributes(:difference => t.difference)
                    objTeam.update_attributes(:current_streak => t.current_streak)
                    objTeam.update_attributes(:team_id => teamID)
                end
            end

                rank += 1
                objTeam.update_attributes(:division_rank => rank)
                puts "team #{t.display_name} rank #{rank}"
        end



        rank = 0
            objTeam = "";
        afcsouth = item.css("tr")[33..36]
        afcsouth.css("tr").each do |details|
            y = 0
            t = Standing.new
            details.css('td').each do |team|  

            teamName = "";  
                y+=1
                
                t.division = "AFC South"
                t.display_order = 3
                t.division_rank = y
                t.conference = "AFC"

                case y
                    when 1 then t.display_name = team.css('a').text
                    when 2 then t.wins = team.text 
                    when 3 then t.losses = team.text
                    when 4 then t.ties = team.text
                    when 5 then t.pct = team.text
                    when 6 then t.home_record = team.text
                    when 7 then t.road_record = team.text
                    when 8 then t.division_record = team.text
                    when 9 then t.conference_record = team.text
                    when 10 then t.points_for = team.text
                    when 11 then t.points_allowed = team.text
                    when 12 then t.difference = team.text
                    when 13 then t.current_streak = team.text
                end


                objTeam = Standing.where(:display_name => t.display_name).last
                teamID = objTeam.abbr
                

                if objTeam == nil
                    t.save
                else
                    objTeam.update_attributes(:display_order => t.display_order)
                    objTeam.update_attributes(:wins => t.wins)
                    objTeam.update_attributes(:losses => t.losses)
                    objTeam.update_attributes(:ties => t.ties)
                    objTeam.update_attributes(:pct => t.pct)
                    objTeam.update_attributes(:home_record => t.home_record)
                    objTeam.update_attributes(:road_record => t.road_record)
                    objTeam.update_attributes(:division_record => t.division_record)
                    objTeam.update_attributes(:conference_record => t.conference_record)
                    objTeam.update_attributes(:points_for => t.points_for)
                    objTeam.update_attributes(:points_allowed => t.points_allowed)
                    objTeam.update_attributes(:difference => t.difference)
                    objTeam.update_attributes(:current_streak => t.current_streak)
                    objTeam.update_attributes(:team_id => teamID)
                end
            end


                rank += 1
                objTeam.update_attributes(:division_rank => rank)
                puts "team #{t.display_name} rank #{rank}"
        end


        rank = 0
            objTeam = "";
        afcsouth = item.css("tr")[38..41]
        afcsouth.css("tr").each do |details|
            y = 0
            t = Standing.new
            details.css('td').each do |team| 

            teamName = "";  
                y+=1
                
                t.division = "AFC West"
                t.display_order = 1
                t.division_rank = y
                t.conference = "AFC"

                case y
                    when 1 then t.display_name = team.css('a').text
                    when 2 then t.wins = team.text 
                    when 3 then t.losses = team.text
                    when 4 then t.ties = team.text
                    when 5 then t.pct = team.text
                    when 6 then t.home_record = team.text
                    when 7 then t.road_record = team.text
                    when 8 then t.division_record = team.text
                    when 9 then t.conference_record = team.text
                    when 10 then t.points_for = team.text
                    when 11 then t.points_allowed = team.text
                    when 12 then t.difference = team.text
                    when 13 then t.current_streak = team.text
                end


                objTeam = Standing.where(:display_name => t.display_name).last
                teamID = objTeam.abbr


                if objTeam == nil
                    
                    t.save
                else
                    objTeam.update_attributes(:display_order => t.display_order)
                    objTeam.update_attributes(:wins => t.wins)
                    objTeam.update_attributes(:losses => t.losses)
                    objTeam.update_attributes(:ties => t.ties)
                    objTeam.update_attributes(:pct => t.pct)
                    objTeam.update_attributes(:home_record => t.home_record)
                    objTeam.update_attributes(:road_record => t.road_record)
                    objTeam.update_attributes(:division_record => t.division_record)
                    objTeam.update_attributes(:conference_record => t.conference_record)
                    objTeam.update_attributes(:points_for => t.points_for)
                    objTeam.update_attributes(:points_allowed => t.points_allowed)
                    objTeam.update_attributes(:difference => t.difference)
                    objTeam.update_attributes(:current_streak => t.current_streak)
                    objTeam.update_attributes(:team_id => teamID)
                end
            end


                rank += 1
                objTeam.update_attributes(:division_rank => rank)
                puts "team #{t.display_name} rank #{rank}"
        end

        conference_rank()
    end
	end

    def conference_rank
        page = Nokogiri::HTML(open("http://espn.go.com/nfl/standings/_/group/2")) 
        count = 0
        objTeam = "";
        page.css("table").each do |item|

        nfceast = item.css("tr")[2..17]
        nfceast.css("tr").each do |details|
            y = 0
            t = Standing.new

            details.css('td').each do |team|  
            

            teamName = "";  
                y+=1

                case y
                    when 1 then t.display_name = team.css('a').text
                    when 2 then t.wins = team.text 
                    when 3 then t.losses = team.text
                    when 4 then t.ties = team.text
                    when 5 then t.pct = team.text
                    when 6 then t.home_record = team.text
                    when 7 then t.road_record = team.text
                    when 8 then t.division_record = team.text
                    when 9 then t.conference_record = team.text
                    when 10 then t.points_for = team.text
                    when 11 then t.points_allowed = team.text
                    when 12 then t.difference = team.text
                    when 13 then t.current_streak = team.text
                end


                objTeam = Standing.where(:display_name => t.display_name).last
            end
            count += 1
            # puts "team  #{objTeam.display_name} rank #{count}"

            objTeam.update_attributes(:conference_rank => count)
        end
        count = 0
        afc = item.css("tr")[20..35]
        afc.css("tr").each do |details|
            y = 0
            t = Standing.new

            details.css('td').each do |team|  
            

            teamName = "";  
                y+=1

                case y
                    when 1 then t.display_name = team.css('a').text
                    when 2 then t.wins = team.text 
                    when 3 then t.losses = team.text
                    when 4 then t.ties = team.text
                    when 5 then t.pct = team.text
                    when 6 then t.home_record = team.text
                    when 7 then t.road_record = team.text
                    when 8 then t.division_record = team.text
                    when 9 then t.conference_record = team.text
                    when 10 then t.points_for = team.text
                    when 11 then t.points_allowed = team.text
                    when 12 then t.difference = team.text
                    when 13 then t.current_streak = team.text
                end


                objTeam = Standing.where(:display_name => t.display_name).last
            end
            count += 1
            # puts "team  #{objTeam.display_name} rank #{count}"

            objTeam.update_attributes(:conference_rank => count)
        end
        end
    end
end