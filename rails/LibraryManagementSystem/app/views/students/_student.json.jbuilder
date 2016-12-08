json.extract! student, :id, :Name, :Gender, :Date_of_Birth, :dept_id, :Contact, :created_at, :updated_at
json.url student_url(student, format: :json)