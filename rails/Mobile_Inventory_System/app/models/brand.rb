class Brand < ApplicationRecord
  acts_as_gmappable
  has_many :mobiles
  
  def gmaps4rails_head_office
  head_office
end
end
