class Podcast < ActiveRecord::Base
  attr_accessible :author, :description, :duration, :link, :pubDate, :title
end
