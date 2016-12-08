class Dept < ApplicationRecord
	has_many :books
	has_many :students
end
