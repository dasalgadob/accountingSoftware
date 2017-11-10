class StatesController < ApplicationController
  before_action :set_state, only: [:show, :edit, :update, :destroy]

  # GET /states
  # GET /states.json
  def index
    @states = State.all
  end

  # GET /states/1
  # GET /states/1.json
  def show
    @country = @state.country
    @cities = @state.cities
  end

  # GET /states/new
  def new
    @country = Country.find( params[:country_id])
    @state = State.new
  end

  # GET /states/1/edit
  def edit
    #@state = State.find(params[:id])
    #@country = @state.country
  end

  # POST /states
  # POST /states.json
  def create
    @country = Country.find(params[:country_id])
    @state = State.new(state_params)
    @state.country = @country
    respond_to do |format|
      if @state.save
        format.html { redirect_to country_path(@state.country), notice: 'State was successfully created.' }
        format.json { render :show, status: :created, location: @state }
      else
        format.html { render :new }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /states/1
  # PATCH/PUT /states/1.json
  def update
    respond_to do |format|
      if @state.update(state_params)
        format.html { redirect_to country_path(@state.country), notice: 'State was successfully updated.' }
        format.json { render :show, status: :ok, location: @state }
      else
        format.html { render :edit }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /states/1
  # DELETE /states/1.json
  def destroy
    @country= @state.country
    @state.destroy
    respond_to do |format|
      format.html { redirect_to country_path(@country), notice: 'State was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = State.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_params
      params.require(:state).permit(:country_id, :code, :name)
    end
end
