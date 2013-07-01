class CreateTeams < ActiveRecord::Migration
  
  def change
    create_table :teams do |t|

      t.string  :division
      t.string  :name
      t.string  :wins
      t.string  :losses
      t.string  :ties
      t.float   :win_pct
      t.string  :home_record
      t.string  :road_record
      t.string  :division_record
      t.string  :conf_record
      t.integer :points_for
      t.integer :points_allowed
      t.string  :point_diff
      t.string  :current_streak
      t.integer :division_id

      t.timestamps
      
    end
  end
end
