class Buyer < ApplicationRecord
	has_many :mobiles, through: :cust_mobiles
	has_many :invoices
	validates :name, :address, presence: true
	validates :contact_num, uniqueness: true
end
