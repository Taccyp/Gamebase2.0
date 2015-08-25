class CollectionsController < ApplicationController

def index 
  @collection = current_user.games
end


#def Product.out_of_stock
 # Rails.cache.fetch("out_of_stock_products", :expires_in => 5.minutes) do
  #  Product.all.joins(:inventory).conditions.where("inventory.quantity = 0")
  #end
#end

end