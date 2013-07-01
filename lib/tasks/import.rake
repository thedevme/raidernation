require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'httparty'
require 'json'
require 'sanitize'

namespace :club_raider_nation do
  namespace :imports do
    
    desc "Raider Depth Chart 2012"
    task :depthchart => [:environment] do
      DepthChartUpdater.new.update
    end

    desc "Import the scores"
    task :scores => [:environment] do
      ScoreUpdater.new.update
    end

    desc "Import the standings"
    task :standings => [:environment] do
      StandingsUpdater.new.update
    end

    desc "Import the feed"
    task :feed => [:environment] do
      FeedUpdater.new.update("http://pipes.yahoo.com/pipes/pipe.run?_id=3d4ad83eee81310a30d3b1b1ced9346f&_render=json")
      FeedUpdater.new.update("http://pipes.yahoo.com/pipes/pipe.run?_id=b38d3fbae48e695fd738181ce47485b1&_render=json")
    end

    desc "Import the feed"
    task :podcast => [:environment] do
      PodcastUpdater.new.update("http://pipes.yahoo.com/pipes/pipe.run?_id=affcb31468d2e13309f20a1ad5c268cd&_render=json")
    end

    desc "Import Raider Roster"
    task :roster => [:environment] do
      today = Time.now.utc
      RosterUpdaterV2.new.update(today)
      RosterUpdaterV2.new.removePlayers(today)
    end

    desc "Import Stats"
    task :stats => [:environment] do
      StatsUpdater.new.update
    end

    desc "Import Schedule 2013"
    task :schedules => [:environment] do
      SchedulesUpdater.new.update
    end
  end
end