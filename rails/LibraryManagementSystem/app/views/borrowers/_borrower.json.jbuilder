json.extract! borrower, :id, :book_id, :issued_date, :return_date, :staff_id, :student_id, :created_at, :updated_at
json.url borrower_url(borrower, format: :json)