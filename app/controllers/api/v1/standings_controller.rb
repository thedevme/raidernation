module Api
  module V1
    class StandingsController < ApplicationController
      respond_to :json

      def index
        respond_with Standing.all
      end

      def show
        respond_with Standing.find(params[:id])
      end

      def create
        respond_with Standing.create(params[:standing])
      end

      def update
        respond_with Standing.update(params[:id], params[:standing])
      end

      def destroy
        respond_with Standing.destroy(params[:id])
      end
    end
  end
end