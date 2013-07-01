class FeedUpdater

	def update(url)
	    json = JSON.parse(HTTParty.get(url).response.body)
	    
	    items = json["value"]
	    updateTime = Time.now
	    
	    items["items"].each do |item|

	    	# Entrity::URL::urls_identical?(url1, url2, false)
		  arrNewsURL = item["link"].split("#")
	      objNewsItem = NewsItem.where(:link => arrNewsURL[0]).first
		  newsItem = NewsItem.new
 		  
		  if objNewsItem != nil

			  if objNewsItem.content == nil
		        baseURL = "https://www.readability.com/api/content/v1/parser"
		        token = "f27a51423c5d19cb1ece87efd6b2bdc2586d1afd"
		        newsURL =   "#{baseURL}?url=#{arrNewsURL[0]}&token=#{token}"
		        response = HTTParty.get(newsURL)
		        newsJSON = JSON.parse(response.body)
		          
		        if response.message == "OK"
		        	
		       		objNewsItem.update_attributes(:content => newsJSON['content'])
			   		objNewsItem.update_attributes(:image => newsJSON['lead_image_url'])
			   		objNewsItem.update_attributes(:short_url => newsJSON['short_url'])
			   		objNewsItem.update_attributes(:author => newsJSON['author'])
			   		
			   		if objNewsItem.content == nil 
			   			objNewsItem.update_attributes(:ignore => true)
			   		else
			   			objNewsItem.update_attributes(:ignore => false)
			   		end
		        end
			  end
	      else
	      	
		  	baseURL = "https://www.readability.com/api/content/v1/parser"
	        token = "f27a51423c5d19cb1ece87efd6b2bdc2586d1afd"
		    newsURL =   "#{baseURL}?url=#{arrNewsURL[0]}&token=#{token}"
		    response = HTTParty.get(newsURL)
	        newsJSON = JSON.parse(response.body)
	          
	        if response.message == "OK"
	        	newsItem.content = newsJSON['content']
				newsItem.image = newsJSON['lead_image_url']
				newsItem.short_url = newsJSON['short_url']
				newsItem.author = newsJSON['author']
	        end
	      end

	        newsItem.title = item["title"]
	        desc = item['description']

	        if item['description'] == nil
	            newsItem.short_desc = "No Description"
	            newsItem.desc = "No Description"
	        else
	            newsItem.short_desc = snippet(Sanitize.clean(item["description"]), 50)
	            newsItem.desc = snippet(Sanitize.clean(item["description"]), 50)
	        end

	        feedDate = Date.parse(item["pubDate"])
	        newsItem.pub_date = feedDate
	        newsItem.link = arrNewsURL[0]
	        
	        if newsItem.content == nil 
				newsItem.ignore = true
			else
				newsItem.ignore = false
			end
	        
			newsItem.save
	        
	    end
	end



	def snippet(thought, wordcount) 
		thought.split[0..(wordcount-1)].join(" ") +(thought.split.size > wordcount ? "..." : "") 
	end 
end

