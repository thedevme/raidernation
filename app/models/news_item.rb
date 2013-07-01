class NewsItem < ActiveRecord::Base
  attr_accessible :desc, :short_desc, :link, :pub_date, :title, :ignore, :content, :image, :author, :short_url
  validates_uniqueness_of :link
end
