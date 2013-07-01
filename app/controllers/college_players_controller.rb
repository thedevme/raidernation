class CollegePlayersController < ApplicationController
  # GET /college_players
  # GET /college_players.json
  def index
    @college_players = CollegePlayer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @college_players }
    end
  end

  # GET /college_players/1
  # GET /college_players/1.json
  def show
    @college_player = CollegePlayer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @college_player }
    end
  end

  # GET /college_players/new
  # GET /college_players/new.json
  def new
    @college_player = CollegePlayer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @college_player }
    end
  end

  # GET /college_players/1/edit
  def edit
    @college_player = CollegePlayer.find(params[:id])
  end

  # POST /college_players
  # POST /college_players.json
  def create
    @college_player = CollegePlayer.new(params[:college_player])

    respond_to do |format|
      if @college_player.save
        format.html { redirect_to @college_player, notice: 'College player was successfully created.' }
        format.json { render json: @college_player, status: :created, location: @college_player }
      else
        format.html { render action: "new" }
        format.json { render json: @college_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /college_players/1
  # PUT /college_players/1.json
  def update
    @college_player = CollegePlayer.find(params[:id])

    respond_to do |format|
      if @college_player.update_attributes(params[:college_player])
        format.html { redirect_to @college_player, notice: 'College player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @college_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /college_players/1
  # DELETE /college_players/1.json
  def destroy
    @college_player = CollegePlayer.find(params[:id])
    @college_player.destroy

    respond_to do |format|
      format.html { redirect_to college_players_url }
      format.json { head :no_content }
    end
  end
end
