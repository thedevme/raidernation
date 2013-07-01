class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.string :full_name
      t.string :first_name
      t.string :last_name
      t.integer :jersey
      t.string :roster_position
      t.string :height
      t.integer :weight
      t.integer :age
      t.string :experience
      t.string :college
      t.string :player_image
      t.string :player_full_image
      t.text :latest_news
      t.string :roster_id
      t.string :short_id
      t.datetime    :last_update
      
	  
      t.timestamps
    end
  end
end
