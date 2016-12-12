json.extract! invoice, :id, :payment_mode, :payment_details, :price, :selling_date, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)