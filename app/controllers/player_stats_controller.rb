class PlayerStatsController < ApplicationController
  # GET /player_stats
  # GET /player_stats.json
  def index
    @player_stats = PlayerStat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_stats }
    end
  end

  # GET /player_stats/1
  # GET /player_stats/1.json
  def show
    @player_stat = PlayerStat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_stat }
    end
  end

  # GET /player_stats/new
  # GET /player_stats/new.json
  def new
    @player_stat = PlayerStat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_stat }
    end
  end

  # GET /player_stats/1/edit
  def edit
    @player_stat = PlayerStat.find(params[:id])
  end

  # POST /player_stats
  # POST /player_stats.json
  def create
    @player_stat = PlayerStat.new(params[:player_stat])

    respond_to do |format|
      if @player_stat.save
        format.html { redirect_to @player_stat, notice: 'Player stat was successfully created.' }
        format.json { render json: @player_stat, status: :created, location: @player_stat }
      else
        format.html { render action: "new" }
        format.json { render json: @player_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /player_stats/1
  # PUT /player_stats/1.json
  def update
    @player_stat = PlayerStat.find(params[:id])

    respond_to do |format|
      if @player_stat.update_attributes(params[:player_stat])
        format.html { redirect_to @player_stat, notice: 'Player stat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_stats/1
  # DELETE /player_stats/1.json
  def destroy
    @player_stat = PlayerStat.find(params[:id])
    @player_stat.destroy

    respond_to do |format|
      format.html { redirect_to player_stats_url }
      format.json { head :no_content }
    end
  end
end
