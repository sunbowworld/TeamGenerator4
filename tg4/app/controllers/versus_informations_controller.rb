class VersusInformationsController < ApplicationController
  before_action :set_versus_information, only: [:show, :edit, :update, :destroy]

  # GET /versus_informations
  # GET /versus_informations.json
  def index
    @versus_informations = VersusInformation.all
  end

  # GET /versus_informations/1
  # GET /versus_informations/1.json
  def show
  end

  # GET /versus_informations/new
  def new
    @versus_information = VersusInformation.new
  end

  # GET /versus_informations/1/edit
  def edit
  end

  # POST /versus_informations
  # POST /versus_informations.json
  def create
    @versus_information = VersusInformation.new(versus_information_params)

    respond_to do |format|
      if @versus_information.save
        format.html { redirect_to @versus_information, notice: 'Versus information was successfully created.' }
        format.json { render action: 'show', status: :created, location: @versus_information }
      else
        format.html { render action: 'new' }
        format.json { render json: @versus_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /versus_informations/1
  # PATCH/PUT /versus_informations/1.json
  def update
    respond_to do |format|
      if @versus_information.update(versus_information_params)
        format.html { redirect_to @versus_information, notice: 'Versus information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @versus_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /versus_informations/1
  # DELETE /versus_informations/1.json
  def destroy
    @versus_information.destroy
    respond_to do |format|
      format.html { redirect_to versus_informations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_versus_information
      @versus_information = VersusInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def versus_information_params
      params.require(:versus_information).permit(:versus_at)
    end
end
