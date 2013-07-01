class CustomFeedScraper
	def update

		page = Nokogiri::HTML(open("http://justblogbaby.com/"))
		page.css('div#content .entry-wrapper').each do |item|
			objNewsItem = NewsItem.where(:link => item["link"])
	        newsItem = NewsItem.new

			months = { 'Jan' => 1, 'Feb' => 2, 'Mar' => 3, 'Apr' => 4, 
             'May' => 5, 'Jun' => 6, 'Jul' => 7, 'Aug' => 8, 
             'Sep' => 9, 'Oct' => 10, 'Nov' => 11, 'Dec' => 12 }

            newsItem.title = item.css("h2").text

            desc = item.css("p").text
			stripDesc = desc.lstrip
			
			newsItem.short_desc = stripDesc[0..-12]
	        newsItem.desc = stripDesc[0..-12]

			link = item.css('h2 a')
			pubDate = item.css(".entry-meta .date").text
			arrDate = pubDate.split(" ")
			# puts months[arrDate[0]] 
			day = arrDate[1]
			numDay = day[0..-3]

			if numDay.length == 1
				date = "#{months[arrDate[0]]} 0#{numDay} #{2012}"
			else
				date = "#{months[arrDate[0]]} #{numDay} #{2012}"
			end

			feedDate = Date.parse(date)
			newsItem.pub_date = feedDate
			newsItem.link = item.at_css('h2 a')['href']

			if objNewsItem.empty?
	            newsItem.save
	        else
	            objNewsItem[0].update_attributes(:title => item.css("h2").text)
	            objNewsItem[0].update_attributes(:desc => stripDesc[0..-12])
	            objNewsItem[0].update_attributes(:short_desc => stripDesc[0..-12])
	            objNewsItem[0].update_attributes(:pub_date => feedDate)
	            objNewsItem[0].update_attributes(:link => item.at_css('h2 a')['href'])
	        end
			puts "========================"


		end
	end





	def featured

		page = Nokogiri::HTML(open("http://justblogbaby.com/"))
		page.css('.featured-content .big .entry-wrapper').each do |item|
			
			objNewsItem = NewsItem.where(:link => item.at_css('h2 a')['href'])
			puts "news item #{objNewsItem}"
	        newsItem = NewsItem.new

			months = { 'Jan' => 1, 'Feb' => 2, 'Mar' => 3, 'Apr' => 4, 
             'May' => 5, 'Jun' => 6, 'Jul' => 7, 'Aug' => 8, 
             'Sep' => 9, 'Oct' => 10, 'Nov' => 11, 'Dec' => 12 }

            newsItem.title = item.css("h2").text
            

            if objNewsItem.empty?

	            desc = item.css("p").text
	            stripDesc = desc.lstrip
				newsItem.short_desc = stripDesc[0..-12]
		        newsItem.desc = stripDesc[0..-12]

				pubDate = item.css(".meta").text
				arrDate = pubDate.split(" ")
				day = arrDate[1]
				numDay = day[0..-3]

				if numDay.length == 1
					date = "#{months[arrDate[0]]} 0#{numDay} #{2012}"
				else
					date = "#{months[arrDate[0]]} #{numDay} #{2012}"
				end

				feedDate = Date.parse(date)
				
				newsItem.pub_date = feedDate
				newsItem.link = item.at_css('h2 a')['href']
	            newsItem.save
	        else
	        	puts "article exists"
	            # objNewsItem[0].update_attributes(:title => item.css("h2").text)
	            # objNewsItem[0].update_attributes(:desc => stripDesc[0..-12])
	            # objNewsItem[0].update_attributes(:short_desc => stripDesc[0..-12])
	            # objNewsItem[0].update_attributes(:pub_date => feedDate)
	            # objNewsItem[0].update_attributes(:link => item.at_css('h2 a')['href'])
	        end
		end
	end
end