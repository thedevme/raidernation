class CreateNewsItems < ActiveRecord::Migration

  def change

    create_table :news_items do |t|
      
      t.string 	:title
      t.text 	:desc
      t.text 	:short_desc
      t.string 	:pub_date
      t.string 	:link

      t.timestamps

    end
  end
end