json.extract! invoice_service, :id, :invoice_id, :service_id, :description, :value, :iva, :withholding_tax, :withholding_tax_ica, :created_at, :updated_at
json.url invoice_service_url(invoice_service, format: :json)
