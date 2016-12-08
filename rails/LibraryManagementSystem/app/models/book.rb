class Book < ApplicationRecord
  belongs_to :publication
  belongs_to :dept
  has_many :borrowers
end
