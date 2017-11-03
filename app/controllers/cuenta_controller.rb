class CuentaController < ApplicationController
  before_action :set_cuentum, only: [:show, :edit, :update, :destroy]

  # GET /cuenta
  # GET /cuenta.json
  def index
    @cuenta = Cuentum.all
  end

  # GET /cuenta/1
  # GET /cuenta/1.json
  def show
    @grupo = @cuentum.grupo
  end

  # GET /cuenta/new
  def new
    @cuentum = Cuentum.new
    @grupo = Grupo.find(params[:grupo_id])
  end

  # GET /cuenta/1/edit
  def edit
  end

  # POST /cuenta
  # POST /cuenta.json
  def create
    @cuentum = Cuentum.new(cuentum_params)
    @grupo = Grupo.find(params[:grupo_id])
    @cuentum.grupo = @grupo
    respond_to do |format|
      if @cuentum.save
        format.html { redirect_to grupo_path(@cuentum.grupo), notice: 'Cuentum was successfully created.' }
        format.json { render :show, status: :created, location: @cuentum }
      else
        format.html { render :new }
        format.json { render json: @cuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuenta/1
  # PATCH/PUT /cuenta/1.json
  def update

    respond_to do |format|
      if @cuentum.update(cuentum_params)
        format.html { redirect_to grupo_path(@cuentum.grupo), notice: 'Cuentum was successfully updated.' }
        format.json { render :show, status: :ok, location: @cuentum }
      else
        format.html { render :edit }
        format.json { render json: @cuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuenta/1
  # DELETE /cuenta/1.json
  def destroy
    @grupo = @cuentum.grupo
    @cuentum.destroy
    respond_to do |format|
      format.html { redirect_to grupo_path(@grupo), notice: 'Cuentum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuentum
      @cuentum = Cuentum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuentum_params
      params.require(:cuentum).permit(:grupo_id, :number, :name)
    end
end
