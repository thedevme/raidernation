class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|

      t.string :title
      t.string :author
      t.string :content_url
      t.string :duration
      t.string :description
      t.datetime :publish_datetime
      t.string :time_since
      t.string :pod_id
      t.string :pod_short_id

      t.timestamps
    end
  end
end
