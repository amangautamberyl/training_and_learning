class Mobile < ApplicationRecord
  belongs_to :brand 
  has_one :seller, through: :cust_mobiles
  has_one :invoice, through: :cust_mobiles
  has_one :buyer, through: :cust_mobiles
  validates :Name, :Price, :manufacturing_date, presence: true
  validates :Imei_code, uniqueness: true
  validates :Price, numericality: {greater_than_or_equal_to: 0.01}
end
