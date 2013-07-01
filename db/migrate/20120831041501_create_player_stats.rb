class CreatePlayerStats < ActiveRecord::Migration
  def change
    
    create_table :player_stats do |t|

      t.integer :player_id
      t.integer :year

      # PASSING STATS
      t.integer :passing_att
      t.integer :passing_comp
      t.float :passing_comp_pct
      t.float :yds_per_att
      t.string :passing_yd
      t.integer :passing_td
      t.float :passing_td_pct
      t.integer :passing_int
      t.float :passing_int_pct
      t.integer :passing_lg
      t.integer :sacked
      t.integer :sacked_yd_lost
      t.float :passing_rtg

      # RUSHING STATS
      t.integer :rushing_att
      t.string :rushing_yd
      t.integer :rushing_lg
      t.float :rushing_avg
      t.integer :rushing_td

      # RECEIVING STATS
      t.integer :rec
      t.string :rec_yd
      t.float :rec_yd_avg
      t.integer :rec_lg
      t.integer :rec_td

      # KICKER STATS
      t.integer :fg_made_range1
      t.integer :fg_att_range1
      t.integer :fg_made_range2
      t.integer :fg_att_range2
      t.integer :fg_made_range3
      t.integer :fg_att_range3
      t.integer :fg_made_range4
      t.integer :fg_att_range4
      t.integer :fg_made_range5
      t.integer :fg_att_range5
      t.float :fg_pct
      t.string :fg_totals

      # PUNTER STATS
      t.integer :punt_att
      t.integer :punt_blk
      t.integer :punt_tbk
      t.integer :punt_in20
      t.float :punt_avg
      t.integer :punt_long

      # PUNT RETURN STATS
      t.integer :punt_returns
      t.integer :punt_return_fc
      t.integer :punt_return_td
      t.integer :punt_return_lg
      t.float :punt_return_avg

      # KICK RETURN STATS
      t.integer :kick_return_lg
      t.integer :kick_return_td
      t.string :kick_return_yd
      t.float :kick_return_avg
      t.integer :kick_returns

      # DEFENSIVE STATS
      t.float :sacks
      t.integer :total_tackles
      t.integer :solo_tackles
      t.integer :assists
      t.integer :int
      t.string :int_yd
      t.float :int_yd_avg
      t.integer :int_td
      t.integer :int_lg
      t.integer :fumbles
      t.integer :tackles

      t.timestamps
    end
  end
end


