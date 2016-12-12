json.extract! buyer, :id, :name, :address, :contact_num, :created_at, :updated_at
json.url buyer_url(buyer, format: :json)