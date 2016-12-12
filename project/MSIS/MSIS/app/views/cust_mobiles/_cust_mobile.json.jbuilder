json.extract! cust_mobile, :id, :mses_id, :seller_id, :buyer_id, :invoice_id, :created_at, :updated_at
json.url cust_mobile_url(cust_mobile, format: :json)