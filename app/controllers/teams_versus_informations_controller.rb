class TeamsVersusInformationsController < ApplicationController
  before_action :set_teams_versus_information, only: [:show, :edit, :update, :destroy]

  # GET /teams_versus_informations
  # GET /teams_versus_informations.json
  def index
    @teams_versus_informations = TeamsVersusInformation.all
  end

  # GET /teams_versus_informations/1
  # GET /teams_versus_informations/1.json
  def show
  end

  # GET /teams_versus_informations/new
  def new
    @teams_versus_information = TeamsVersusInformation.new
  end

  # GET /teams_versus_informations/1/edit
  def edit
  end

  # POST /teams_versus_informations
  # POST /teams_versus_informations.json
  def create
    @teams_versus_information = TeamsVersusInformation.new(teams_versus_information_params)

    respond_to do |format|
      if @teams_versus_information.save
        format.html { redirect_to @teams_versus_information, notice: 'Teams versus information was successfully created.' }
        format.json { render action: 'show', status: :created, location: @teams_versus_information }
      else
        format.html { render action: 'new' }
        format.json { render json: @teams_versus_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams_versus_informations/1
  # PATCH/PUT /teams_versus_informations/1.json
  def update
    respond_to do |format|
      if @teams_versus_information.update(teams_versus_information_params)
        format.html { redirect_to @teams_versus_information, notice: 'Teams versus information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @teams_versus_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams_versus_informations/1
  # DELETE /teams_versus_informations/1.json
  def destroy
    @teams_versus_information.destroy
    respond_to do |format|
      format.html { redirect_to teams_versus_informations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teams_versus_information
      @teams_versus_information = TeamsVersusInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teams_versus_information_params
      params.require(:teams_versus_information).permit(:versus_information_id, :team_id, :score)
    end
end
