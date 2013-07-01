class PodcastUpdater

	def update(url)
	    json = JSON.parse(HTTParty.get(url).response.body)
	    
	    items = json["value"]
	    updateTime = Time.now
	    
	    items["items"].each do |item|

	       objNewsItem = nil
	       # Podcast.where(:title => item["title"]).first
		  
 		  
		  if objNewsItem != nil

			

	      else
	      	uuid = SecureRandom.uuid
	      	newsItem = Podcast.new
	      	arrKeys = uuid.split("-")

			newsItem.title = item["title"]
			podInfo = item['enclosure']
			newsItem.content_url = podInfo[:url]
			puts "#{item['enclosure']}"
		  	newsItem.publish_datetime = item['pubDate']
		  	puts "DateTime #{newsItem.publish_datetime}"
			newsItem.author = item['itunes:author']
			newsItem.pod_id = uuid
			newsItem.pod_short_id = arrKeys.last
			newsItem.duration = item['itunes:duration']


			# podDates = { :start_time => Time.now.utc, :end_time => item['pubDate'] }

	        # newsItem.time_since = duration(podDates)
	        puts "#{newsItem.time_since}"

	        if item['description'] == nil
	            newsItem.desc = "No Description"
	        else
	            newsItem.description = snippet(Sanitize.clean(item["description"]), 50)
	        end


	       end

			 newsItem.save
	    end
	end



	def snippet(thought, wordcount) 
		thought.split[0..(wordcount-1)].join(" ") +(thought.split.size > wordcount ? "..." : "") 
	end 

	def duration(display)
    if start_time.nil? || end_time.nil? || start_time.blank? || end_time.blank?
      return ""
    end
     
    seconds = end_time - start_time
    minutes = seconds.to_i / 60
    hours = minutes.to_i / 60
    days = hours.to_i / 24
     
    new_hours = hours - (days * 24)
    new_minutes = minutes - (hours * 60)
     
    case display
      when "minutes"
        return new_minutes
      when "minutes_total"
        return minutes
      when "hours"
        return new_hours
      when "hours_total"
        return hours
      when "days"
        return days
      when "text"
        the_string = ""
     
        if days == 1
          the_string += "1 day "
        elsif days > 0
          the_string += days.to_s + " days "
        end
     
        if new_hours == 1
          the_string += "1 hour "
        elsif new_hours > 0
          the_string += new_hours.to_s + " hours "
        end
     
        if new_minutes == 1
          the_string += "1 minute "
        else
          the_string += new_minutes.to_s + " minutes"
        end
     
        return the_string
      when "text_short"
        the_string = ""
     
        if days == 1
          the_string += "1 d "
        elsif days > 0
          the_string += days.to_s + " d "
        end
     
        if new_hours == 1
          the_string += "1 h "
        elsif new_hours > 0
          the_string += new_hours.to_s + " h "
        end
     
        if new_minutes == 1
          the_string += "1 m "
        else
          the_string += new_minutes.to_s + " m"
        end
    end
     
  end
end

