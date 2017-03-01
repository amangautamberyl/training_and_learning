class Image < ApplicationRecord
	has_many :image_attachments
    accepts_nested_attributes_for :image_attachments
end
