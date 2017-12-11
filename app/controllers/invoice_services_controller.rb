class InvoiceServicesController < ApplicationController
  before_action :set_invoice_service, only: [:show, :edit, :update, :destroy]

  # GET /invoice_services
  # GET /invoice_services.json
  def index
    @invoice_services = InvoiceService.all
  end

  # GET /invoice_services/1
  # GET /invoice_services/1.json
  def show
  end

  # GET /invoice_services/new
  def new
    @invoice_service = InvoiceService.new
  end

  # GET /invoice_services/1/edit
  def edit
  end

  # POST /invoice_services
  # POST /invoice_services.json
  def create
    @invoice_service = InvoiceService.new(invoice_service_params)

    respond_to do |format|
      if @invoice_service.save
        format.html { redirect_to @invoice_service, notice: 'Invoice service was successfully created.' }
        format.json { render :show, status: :created, location: @invoice_service }
      else
        format.html { render :new }
        format.json { render json: @invoice_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoice_services/1
  # PATCH/PUT /invoice_services/1.json
  def update
    respond_to do |format|
      if @invoice_service.update(invoice_service_params)
        format.html { redirect_to @invoice_service, notice: 'Invoice service was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice_service }
      else
        format.html { render :edit }
        format.json { render json: @invoice_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_services/1
  # DELETE /invoice_services/1.json
  def destroy
    @invoice_service.destroy
    respond_to do |format|
      format.html { redirect_to invoice_services_url, notice: 'Invoice service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_service
      @invoice_service = InvoiceService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_service_params
      params.require(:invoice_service).permit(:invoice_id, :service_id, :description, :value, :iva, :withholding_tax, :withholding_tax_ica)
    end
end
