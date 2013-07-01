class AddShortUrlToNewsItem < ActiveRecord::Migration
  def change
    add_column :news_items, :short_url, :string
  end
end
