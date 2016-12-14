class Lineitem < ApplicationRecord
  belongs_to :article
  belongs_to :cart
  def total_price
    article.price * quantity
  end
end
