class CreateGames < ActiveRecord::Migration

  def change
    create_table :games do |t|

      t.string  :opponent
      t.date    :game_date
      t.string  :game_time
      t.string  :status
      t.string  :location
      t.string  :result
      t.string  :tv
      t.integer :home_score
      t.integer :away_score
      t.string  :raider_link
      t.string  :ballers_link

      t.timestamps
    end
  end
end