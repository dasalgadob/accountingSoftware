class SubaccountsController < ApplicationController
  before_action :set_subaccount, only: [:show, :edit, :update, :destroy]

  # GET /subaccounts
  # GET /subaccounts.json
  def index
    @subaccounts = Subaccount.all
  end

  # GET /subaccounts/1
  # GET /subaccounts/1.json
  def show
    @auxiliars = @subaccount.auxiliars
  end

  # GET /subaccounts/new
  def new
    @account = Account.find(params[:account_id])
    @subaccount = Subaccount.new
  end

  # GET /subaccounts/1/edit
  def edit
  end

  # POST /subaccounts
  # POST /subaccounts.json
  def create
    @account = Account.find( params[:account_id])
    @subaccount = Subaccount.new(subaccount_params)
    @subaccount.account = @account
    respond_to do |format|
      if @subaccount.save
        format.html { redirect_to account_path(@subaccount.account), notice: 'Subaccount was successfully created.' }
        format.json { render :show, status: :created, location: @subaccount }
      else
        format.html { render :new }
        format.json { render json: @subaccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subaccounts/1
  # PATCH/PUT /subaccounts/1.json
  def update
    respond_to do |format|
      if @subaccount.update(subaccount_params)
        format.html { redirect_to account_path(@subaccount.account), notice: 'Subaccount was successfully updated.' }
        format.json { render :show, status: :ok, location: @subaccount }
      else
        format.html { render :edit }
        format.json { render json: @subaccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subaccounts/1
  # DELETE /subaccounts/1.json
  def destroy
    @account = @subaccount.account
    @subaccount.destroy
    respond_to do |format|
      format.html { redirect_to account_path(@account), notice: 'Subaccount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subaccount
      @subaccount = Subaccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subaccount_params
      params.require(:subaccount).permit(:account_id, :number, :name)
    end
end
