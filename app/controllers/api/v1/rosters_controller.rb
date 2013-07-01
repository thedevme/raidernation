module Api
  module V1
    class RostersController < ApplicationController
      respond_to :json
      
      def index
        @players = Roster.all
        respond_with do |format|
#         :include => [:player_stats,  :positions]
         format.json { render :json => @players.to_json(:include => [:player_stats,  :positions])} 
        end
      end

      def show
        respond_with Roster.find(params[:id])
      end

      def create
        respond_with Roster.create(params[:roster])
      end

      def update
        respond_with Roster.update(params[:id], params[:roster])
      end

      def destroy
        respond_with Roster.destroy(params[:id])
      end
    end
  end
end