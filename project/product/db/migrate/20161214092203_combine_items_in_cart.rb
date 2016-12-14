class CombineItemsInCart < ActiveRecord::Migration[5.0]

# def up
# # replace multiple items for a single product in a cart with a
# # single item
# Cart.all.each do |cart|
# # count the number of each product in the cart
# sums = cart.lineitems.group(:article_id).sum(:quantity)
# sums.each do |article_id, quantity|
# if quantity > 1
# # remove individual items
# cart.lineitems.where(article_id: article_id).delete_all
# # replace with a single item
# item = cart.lineitems.build(article_id: article_id)
# item.quantity = quantity
# item.save!
# end
# end
# end
# end

def down
	# split items with quantity>1 into multiple items
	Lineitem.where("quantity>1").each do |lineitem|
	# add individual items
	  lineitem.quantity.times do
	    Lineitem.create(cart_id: lineitem.cart_id, article_id: lineitem.article_id,quantity: 1)
      end
# remove original item
      lineitem.destroy
    end
end

  
end