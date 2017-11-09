class AuxiliarsController < ApplicationController
  before_action :set_auxiliar, only: [:show, :edit, :update, :destroy]

  # GET /auxiliars
  # GET /auxiliars.json
  def index
    @auxiliars = Auxiliar.all
  end

  # GET /auxiliars/1
  # GET /auxiliars/1.json
  def show
  end

  # GET /auxiliars/new
  def new
    @subaccount = Subaccount.find( params[:subaccount_id])
    @auxiliar = Auxiliar.new
  end

  # GET /auxiliars/1/edit
  def edit
  end

  # POST /auxiliars
  # POST /auxiliars.json
  def create
    @subaccount = Subaccount.find( params[:subaccount_id])
    @auxiliar = Auxiliar.new(auxiliar_params)
    @auxiliar.subaccount = @subaccount
    respond_to do |format|
      if @auxiliar.save
        format.html { redirect_to subaccount_path(@subaccount), notice: 'Auxiliar was successfully created.' }
        format.json { render :show, status: :created, location: @auxiliar }
      else
        format.html { render :new }
        format.json { render json: @auxiliar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auxiliars/1
  # PATCH/PUT /auxiliars/1.json
  def update
    respond_to do |format|
      if @auxiliar.update(auxiliar_params)
        format.html { redirect_to subaccount_path(@auxiliar.subaccount), notice: 'Auxiliar was successfully updated.' }
        format.json { render :show, status: :ok, location: @auxiliar }
      else
        format.html { render :edit }
        format.json { render json: @auxiliar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auxiliars/1
  # DELETE /auxiliars/1.json
  def destroy
    @subaccount = @auxiliar.subaccount
    @auxiliar.destroy
    respond_to do |format|
      format.html { redirect_to subaccount_path(@subaccount), notice: 'Auxiliar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auxiliar
      @auxiliar = Auxiliar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auxiliar_params
      params.require(:auxiliar).permit(:subaccount_id, :number, :name)
    end
end
