require 'csv'
require 'securerandom'

class SchedulesUpdater

  def update
    file = 'db/schedule13.csv'

    CSV.foreach(file) do |row|

      g = Schedule.where(:date => row[1]).first
      
      

      if g
      else
        game = Schedule.new
         p = SecureRandom.uuid
        
#         testUUID = UUID.new
# 		puts "#{testUUID.generate}"
		
		arrKeys = p.split("-")
		game.game_key = arrKeys.last
# 		puts "p value: #{p}"
		puts "game key: #{game.game_key}"
        game.week = row[0]
        game.date = row[1]
        game.date_time = row[2]
        game.date_time_est = row[3]
        game.day_of_week = row[4]
        game.month_of_year = row[5]
        game.time = row[6]
        game.status = row[8]
        game.game_tv = row[9]
        game.game_type = row[10]
        game.nfl_type = row[11]
        game.is_current_or_next_game = row[12]
        game.title = row[13]
        game.home_team_name = row[14]
        game.home_team_short_name = row[15]
        game.home_team_abbr = row[16]
        game.home_team_small_helmet = row[17]
        game.home_team_large_helmet = row[18]
        game.visitor_team_name = row[19]
        game.visitor_team_short_name = row[20]
        game.visitor_team_abbr = row[21]
        game.visitor_team_small_helmet = row[22]
        game.visitor_team_large_helmet = row[23]
        game.opponent_team_name = row[24]
        game.opponent_team_short_name = row[25]
        game.game_played_at = row[26]
        game.outcome = row[27]
        game.visitor_team_point_total = row[28]
        game.visitor_team_point_q1 = row[29]
        game.visitor_team_point_q2 = row[30]
        game.visitor_team_point_q3 = row[31]
        game.visitor_team_point_q4 = row[32]
        game.visitor_team_point_ot = row[33]
        game.home_team_point_total = row[34]
        game.home_team_point_q1 = row[35]
        game.home_team_point_q2 = row[36]
        game.home_team_point_q3 = row[37]
        game.home_team_point_q4 = row[38]
        game.home_team_point_ot = row[39]
        game.score = row[40]
        game.is_tie = row[41]
        game.winner_team_id = row[42]
        game.is_bye = row[43]
        game.home_team_id = row[44]
        game.visitor_team_id = row[45]
        game.short_title = row[46]
        game.stadium = row[47]

        game.save
      end
    end
  end
end