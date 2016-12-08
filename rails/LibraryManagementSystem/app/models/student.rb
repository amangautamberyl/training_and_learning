class Student < ApplicationRecord
  belongs_to :dept
  has_one :borrower
end
