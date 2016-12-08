json.extract! book, :id, :title, :language, :publication_id, :actual_copy, :current_copy, :dept_id, :created_at, :updated_at
json.url book_url(book, format: :json)