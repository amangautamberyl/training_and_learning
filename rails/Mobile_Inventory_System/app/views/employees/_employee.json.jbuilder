json.extract! employee, :id, :name, :gender, :date_of_joining, :created_at, :updated_at
json.url employee_url(employee, format: :json)