class Cart < ApplicationRecord
	has_many :lineitems, dependent: :destroy

	def add_article(article)
	  current_item = lineitems.find_by(article_id: article.id)
	  if current_item
	    current_item.quantity += 1
	  else
	    current_item = lineitems.build(article_id: article.id)
	  end
	  current_item
	end

	def total_price
      lineitems.to_a.sum { |item| item.total_price }
    end
end
