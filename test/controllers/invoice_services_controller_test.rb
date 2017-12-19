require 'test_helper'

class InvoiceServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice_service = invoice_services(:one)
  end

  test "should get index" do
    get invoice_services_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_service_url
    assert_response :success
  end

  test "should create invoice_service" do
    assert_difference('InvoiceService.count') do
      post invoice_services_url, params: { invoice_service: { description: @invoice_service.description, invoice_id: @invoice_service.invoice_id, iva: @invoice_service.iva, service_id: @invoice_service.service_id, value: @invoice_service.value, withholding_tax: @invoice_service.withholding_tax, withholding_tax_ica: @invoice_service.withholding_tax_ica } }
    end

    assert_redirected_to invoice_service_url(InvoiceService.last)
  end

  test "should show invoice_service" do
    get invoice_service_url(@invoice_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_service_url(@invoice_service)
    assert_response :success
  end

  test "should update invoice_service" do
    patch invoice_service_url(@invoice_service), params: { invoice_service: { description: @invoice_service.description, invoice_id: @invoice_service.invoice_id, iva: @invoice_service.iva, service_id: @invoice_service.service_id, value: @invoice_service.value, withholding_tax: @invoice_service.withholding_tax, withholding_tax_ica: @invoice_service.withholding_tax_ica } }
    assert_redirected_to invoice_service_url(@invoice_service)
  end

  test "should destroy invoice_service" do
    assert_difference('InvoiceService.count', -1) do
      delete invoice_service_url(@invoice_service)
    end

    assert_redirected_to invoice_services_url
  end
end
