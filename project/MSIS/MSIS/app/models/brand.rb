class Brand < ApplicationRecord
	 has_many :mobiles, dependent: :destroy
	 validates :Name, :Headlocation, presence: true
end
