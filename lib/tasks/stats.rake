require 'csv'

desc "Raider Stats 2012 CSV"
namespace :stats_import_csv do
task :statscsv => [:environment] do

    file = 'db/stats.csv'

    CSV.foreach(file) do |row|

      p = Player.find_by_name(row[0])

      # puts "Craig"
      if p == nil
        # puts "Could not find #{name}"
      else

        stat = PlayerStat.find_all_by_player_id(p.id)
        playerStat = PlayerStat.new

        playerStat.player_id = p.id
        playerStat.year = row[1]
        playerStat.passing_att = row[2]
        playerStat.passing_comp = row[2]
        playerStat.passing_comp_pct = row[2]
        playerStat.yds_per_att = row[2]
        playerStat.passing_yd = row[2]
        playerStat.passing_td = row[2]
        playerStat.passing_td_pct = row[2]
        playerStat.passing_int = row[2]
        playerStat.passing_int_pct = row[2]
        playerStat.passing_lg = row[2]
        playerStat.sacked = row[2]
        playerStat.sacked_yd_lost = row[2]
        playerStat.passing_rtg = row[2]

        # RUSHING STATS
        playerStat.rushing_att = row[2]
        playerStat.rushing_yd = row[2]
        playerStat.rushing_lg = row[2]
        playerStat.rushing_avg = row[2]
        playerStat.rushing_td = row[2]

        # RECEIVING STATS
        playerStat.rec = row[2]
        playerStat.rec_yd = row[2]
        playerStat.rec_yd_avg = row[2]
        playerStat.rec_lg = row[2]
        playerStat.rec_td = row[2]

        # KICKER STATS
        playerStat.fg_made_range1 = row[2]
        playerStat.fg_att_range1 = row[2]
        playerStat.fg_made_range2 = row[2]
        playerStat.fg_att_range2 = row[2]
        playerStat.fg_made_range3 = row[2]
        playerStat.fg_att_range3 = row[2]
        playerStat.fg_made_range4 = row[2]
        playerStat.fg_att_range4 = row[2]
        playerStat.fg_made_range5 = row[2]
        playerStat.fg_att_range5 = row[2]
        playerStat.fg_pct = row[2]
        playerStat.fg_totals = row[2]

        # PUNTER STATS
        playerStat.punt_att = row[2]
        playerStat.punt_blk = row[2]
        playerStat.punt_tbk = row[2]
        playerStat.punt_in20 = row[2]
        playerStat.punt_avg = row[2]
        playerStat.punt_long = row[2]

        # PUNT RETURN STATS
        playerStat.punt_returns = row[2]
        playerStat.punt_return_fc = row[2]
        playerStat.punt_return_td = row[2]
        playerStat.punt_return_lg = row[2]
        playerStat.punt_return_avg = row[2]

        # KICK RETURN STATS
        playerStat.kick_return_lg = row[2]
        playerStat.kick_return_td = row[2]
        playerStat.kick_return_yd = row[2]
        playerStat.kick_return_avg = row[2]
        playerStat.kick_returns = row[2]

        # DEFENSIVE STATS
        playerStat.sacks = row[2]
        playerStat.total_tackles = row[2]
        playerStat.solo_tackles = row[2]
        playerStat.assists = row[2]
        playerStat.int = row[2]
        playerStat.int_yd = row[2]
        playerStat.int_yd_avg = row[2]
        playerStat.int_td = row[2]
        playerStat.int_lg = row[2]
        playerStat.fumbles = row[2]
        playerStat.tackles = row[2]



        playerStat.save
      end
    end
  end
end



        
        # playerStat.field_goal = row[2]
        # playerStat.field_goal_pct = row[3]
        # playerStat.extra_points = row[4]
        # playerStat.field_goal_long = row[5]
        # playerStat.rushing_attempts = row[6]
        # playerStat.rushing_yards = row[7]
        # playerStat.rushing_average = row[8]
        # playerStat.rushing_touchdowns = row[9]
        # playerStat.sacks = row[10]
        # playerStat.interceptions = row[11]
        # playerStat.forced_fumbles = row[12]
        # playerStat.tackles = row[13]
        # playerStat.receptions = row[14]
        # playerStat.reception_yards = row[15]
        # playerStat.reception_yard_average = row[16]
        # playerStat.reception_touchdowns = row[17]
        # playerStat.passing_yards = row[18]
        # playerStat.passing_touchdowns = row[19]
        # playerStat.passing_interceptions = row[20]
        # playerStat.passing_rating = row[21]
        # playerStat.punt_attempts = row[22]
        # playerStat.punt_yards = row[23]
        # playerStat.punt_average = row[24]
        # playerStat.punt_long = row[25]
        # playerStat.punt_return_avg = row[26]
        # playerStat.punt_returns = row[27]
        # playerStat.punt_return_lg = row[28]
        # playerStat.punt_return_tds = row[29]
        # playerStat.kick_return_lg = row[26]
        # playerStat.kick_return_tds = row[27]
        # playerStat.kick_return_yds = row[28]
        # playerStat.kick_returns = row[29]