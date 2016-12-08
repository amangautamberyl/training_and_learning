class Borrower < ApplicationRecord
  belongs_to :book
  belongs_to :staff
  belongs_to :student
end
