class TeamStatsController < ApplicationController
def index
    @team_stats = TeamStat.find(1)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @team_stats }
    end
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    @team_stat = TeamStat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team_stat }
    end
  end

  # GET /teams/new
  # GET /teams/new.json
  def new
    @team_stat = TeamStat.new
	respond_with { @team_stat }
    # respond_to do |format|
#       format.html # new.html.erb
#       
#       format.json { render json: @team_stat }
#     end
  end

  # GET /teams/1/edit
  def edit
    @team_stat = TeamStat.find(params[:id])
  end

  # POST /teams
  # POST /teams.json
  def create
    @team_stat = TeamStat.new(params[:team_stat])

    respond_to do |format|
      if @team_stat.save
        format.html { redirect_to @team_stat, notice: 'Team was successfully created.' }
        format.json { render json: @team_stat, status: :created, location: @team_stat }
      else
        format.html { render action: "new" }
        format.json { render json: @team_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teams/1
  # PUT /teams/1.json
  def update
    @team_stat = Team.find(params[:id])

    respond_to do |format|
      if @team_stat.update_attributes(params[:team])
        format.html { redirect_to @team_stat, notice: 'Team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team_stat = TeamStat.find(params[:id])
    @team_stat.destroy

    respond_to do |format|
      format.html { redirect_to teams_url }
      format.json { head :no_content }
    end
  end
end
