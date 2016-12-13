json.extract! article, :id, :title, :description, :image_url, :price, :created_at, :updated_at
json.url article_url(article, format: :json)