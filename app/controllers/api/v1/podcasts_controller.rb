module Api
  module V1
    class PodcastsController < ApplicationController
      respond_to :json
      
      def index
        respond_with Podcast.all
      end

      def show
        respond_with Podcast.find(params[:id])
      end

      def create
        respond_with Podcast.create(params[:roster])
      end

      def update
        respond_with Podcast.update(params[:id], params[:roster])
      end

      def destroy
        respond_with Podcast.destroy(params[:id])
      end
    end
  end
end