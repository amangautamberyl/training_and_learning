class ImageAttachment < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	belongs_to :image
end
