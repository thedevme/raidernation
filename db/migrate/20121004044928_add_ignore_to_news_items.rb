class AddIgnoreToNewsItems < ActiveRecord::Migration
  def change
    add_column :news_items, :ignore, :boolean
  end
end
