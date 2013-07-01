require 'httparty'
require 'json'
require 'rubygems'
require 'sanitize'
require 'nokogiri'
require 'open-uri'

desc "Get raider schedule"
namespace :scheduleimport do
  task :raider_schedule => [:environment] do

    page = Nokogiri::HTML(open("http://www.raiders.com/schedule/season-schedule.html"))

    page.css('div.season-state-container')[1].css('div.game').each do |item|

        array = item.css('div.itm-wrp-5').css('div.game-info').css('div.item-date').css('div.half-date').text.split(/, /)
        gameDate = "";
        gameTime = "";

        if array.count > 0 
            array2 = array[1].split(/at /)
            gameDate = array2[0].rstrip + "/2012"
            # Date.strptime("31/01/2010", "%d/%m/%Y")
            gameTime = array2[1]
        else
            gameDate = "10/07/2012"
        end

        objGame = Game.where(:game_date => Date.strptime(gameDate, "%m/%d/%Y"))
        g = Game.new
        g.game_date = Date.strptime(gameDate, "%m/%d/%Y")
        g.game_time = gameTime
        opponent = item.css('div.itm-wrp-5').css('div.game-info').css('div.opponent').css('div.opponent-name span').text
        numOppLength = item.css('div.itm-wrp-5').css('div.game-info').css('div.opponent').css('div.opponent-name span').length
        

        if numOppLength > 0
            opponent = opponent.gsub(/[^A-Za-z]/, ' ')
            g.opponent = opponent.lstrip
            # puts opponent
        else
            g.opponent = "Bye Week"
            # puts opponent.lstrip
        end

        status = item.css('div.itm-wrp-5').css('div.game-info').css('div.stadium').css('div.stadium-game').text.gsub(/[^A-Za-z]/, '')
        stadiumName = item.css('div.itm-wrp-5').css('div.game-info').css('div.stadium').css('div.stadium-name').text.gsub(/[^A-Za-z]/, ' ')
        g.game_status = status
        g.game_location = stadiumName.lstrip
        
        if item.css('div.itm-wrp-5').css('div.game-data').css('div.item-media').css('li')[0] != nil
            g.game_tv = item.css('div.itm-wrp-5').css('div.game-data').css('div.item-media').css('li')[0].text
        else
            g.game_tv = "N/A"
        end

        numLength = item.css('div.itm-wrp-5').css('div.game-info').css('div.game-day-link').length
        
        if numLength == 1
            g.game_link = "http://www.raiders.com#{item.css('div.itm-wrp-5').css('div.game-info').css('div.game-day-link a')[0]['href']}"
        else
            g.game_link = "No Link"
        end

        result = item.css('div.itm-wrp-5').css('div.game-info').css('div.item-score').css('span.win-loss').text
        if result =~ /([a-zA-Z]+)/
            if result =~ /([Win])/ then g.game_result = "Win" end
            if result =~ /([Loss])/ then g.game_result = "Loss" end
        else
            g.game_result = "-"
        end

        gameScore = item.css('div.itm-wrp-5').css('div.game-info').css('div.item-score').css('span.score').text.lstrip;
        puts gameScore.empty?
        if gameScore.empty?
            g.game_score = item.css('div.itm-wrp-5').css('div.game-info').css('div.item-score').css('span.score').text.lstrip
        else
            g.game_score = "0 - 0"
        end

        if objGame.empty?
            puts "create game"
            g.save
        else
            objGame[0].update_attributes(:game_result => g.game_result)
            objGame[0].update_attributes(:game_date => g.game_date)
            objGame[0].update_attributes(:game_link => g.game_link)
            objGame[0].update_attributes(:game_location => g.game_location)
            objGame[0].update_attributes(:game_score => g.game_score)
            objGame[0].update_attributes(:game_status => g.game_status)
            objGame[0].update_attributes(:game_time => g.game_time)
            objGame[0].update_attributes(:game_tv => g.game_tv)
            objGame[0].update_attributes(:opponent => g.opponent)
        end
    end
  end
end