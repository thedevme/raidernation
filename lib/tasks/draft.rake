require 'csv'

desc "Raiders Draft 2013 Draft"
namespace :draft_import_csv do
  task :draftcsv => [:environment] do

    file = 'db/draft.csv'

    CSV.foreach(file) do |row|

      player = CollegePlayer.new

      player.draft_round = row[0]
      player.draft_pick = row[1]
      player.overall_draft_position = row[2]
      player.player_type = row[3]
      player.player_image = row[4]
      player.full_name = row[5]
      player.first_name = row[6]
      player.last_name = row[7]
      player.position = row[8]
      player.college = row[9]
      player.height = row[10]
      player.arm_length  = row[11]
      player.weight = row[12]
      player.hands = row[13]
      player.comparison = row[14]
      player.strengths = row[15]
      player.weakness  = row[16]
      player.forty_dash  = row[17]
      player.vert_jump  = row[18]
      player.broad_jump = row[19]
      player.three_yd_cone = row[20]
      player.twenty_yd_shuttle = row[21]
      player.sixty_yd_shuttle = row[22]
      player.bench = row[23]
      player.overview = row[24]
      player.espn_overall_rating= row[25]
      player.cbs_overall_rating = row[26]
      player.espn_position_rating = row[27]
      player.cbs_position_rating = row[28]

      player.save

    end
  end
end