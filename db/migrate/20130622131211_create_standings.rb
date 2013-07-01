class CreateStandings < ActiveRecord::Migration
  def change
    create_table :standings do |t|
      t.string :team_id
      t.string :abbr
      t.string :display_name
      t.string :conference
      t.string :division
      t.integer :conference_rank
      t.integer :division_rank
      t.integer :wins
      t.integer :losses
      t.integer :ties
      t.float :pct
      t.string :home_record
      t.string :road_record
      t.string :division_record
      t.string :conference_record
      t.integer :points_for
      t.integer :points_allowed
      t.integer :difference
      t.string :current_streak
      t.boolean :clinched_playoffs

      t.timestamps
    end
  end
end
