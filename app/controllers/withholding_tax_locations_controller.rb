class WithholdingTaxLocationsController < ApplicationController
  before_action :set_withholding_tax_location, only: [:show, :edit, :update, :destroy]

  # GET /withholding_tax_locations
  # GET /withholding_tax_locations.json
  def index
    @withholding_tax_locations = WithholdingTaxLocation.all
  end

  # GET /withholding_tax_locations/1
  # GET /withholding_tax_locations/1.json
  def show
  end

  # GET /withholding_tax_locations/new
  def new
    @person = Person.find(params[:person_id])
    @withholding_tax_location = WithholdingTaxLocation.new
  end

  # GET /withholding_tax_locations/1/edit
  def edit
  end

  # POST /withholding_tax_locations
  # POST /withholding_tax_locations.json
  def create
    @withholding_tax_location = WithholdingTaxLocation.new(withholding_tax_location_params)

    respond_to do |format|
      if @withholding_tax_location.save
        format.html { redirect_to @withholding_tax_location, notice: 'Withholding tax location was successfully created.' }
        format.json { render :show, status: :created, location: @withholding_tax_location }
      else
        format.html { render :new }
        format.json { render json: @withholding_tax_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /withholding_tax_locations/1
  # PATCH/PUT /withholding_tax_locations/1.json
  def update
    respond_to do |format|
      if @withholding_tax_location.update(withholding_tax_location_params)
        format.html { redirect_to @withholding_tax_location, notice: 'Withholding tax location was successfully updated.' }
        format.json { render :show, status: :ok, location: @withholding_tax_location }
      else
        format.html { render :edit }
        format.json { render json: @withholding_tax_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /withholding_tax_locations/1
  # DELETE /withholding_tax_locations/1.json
  def destroy
    @withholding_tax_location.destroy
    respond_to do |format|
      format.html { redirect_to withholding_tax_locations_url, notice: 'Withholding tax location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_withholding_tax_location
      @withholding_tax_location = WithholdingTaxLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def withholding_tax_location_params
      params.require(:withholding_tax_location).permit(:city_id, :person_id)
    end
end
