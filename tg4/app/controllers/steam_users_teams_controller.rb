class SteamUsersTeamsController < ApplicationController
  before_action :set_steam_users_team, only: [:show, :edit, :update, :destroy]

  # GET /steam_users_teams
  # GET /steam_users_teams.json
  def index
    @steam_users_teams = SteamUsersTeam.all
  end

  # GET /steam_users_teams/1
  # GET /steam_users_teams/1.json
  def show
  end

  # GET /steam_users_teams/new
  def new
    @steam_users_team = SteamUsersTeam.new
  end

  # GET /steam_users_teams/1/edit
  def edit
  end

  # POST /steam_users_teams
  # POST /steam_users_teams.json
  def create
    @steam_users_team = SteamUsersTeam.new(steam_users_team_params)

    respond_to do |format|
      if @steam_users_team.save
        format.html { redirect_to @steam_users_team, notice: 'Steam users team was successfully created.' }
        format.json { render action: 'show', status: :created, location: @steam_users_team }
      else
        format.html { render action: 'new' }
        format.json { render json: @steam_users_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steam_users_teams/1
  # PATCH/PUT /steam_users_teams/1.json
  def update
    respond_to do |format|
      if @steam_users_team.update(steam_users_team_params)
        format.html { redirect_to @steam_users_team, notice: 'Steam users team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @steam_users_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steam_users_teams/1
  # DELETE /steam_users_teams/1.json
  def destroy
    @steam_users_team.destroy
    respond_to do |format|
      format.html { redirect_to steam_users_teams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_steam_users_team
      @steam_users_team = SteamUsersTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def steam_users_team_params
      params.require(:steam_users_team).permit(:steam_user_id, :team_id)
    end
end
