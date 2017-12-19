json.extract! invoice, :id, :person_id, :comments, :total, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
