class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|

      t.string  :name
      t.string  :nickname
      t.integer :no
      t.string  :pos
      t.string  :height
      t.integer :weight
      t.integer :age
      t.string  :exp
      t.string  :college
      t.integer :pos_depth
      t.string  :last_name
      t.string  :first_name
      t.string  :image
      t.string  :image_thumb
      t.string  :birthday
      t.text    :news
      t.datetime    :last_update

      t.timestamps
    end
  end
end
