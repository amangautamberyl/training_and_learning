class PostAttachment < ApplicationRecord
	mount_uploader :sample, Sample
   belongs_to :post
end
