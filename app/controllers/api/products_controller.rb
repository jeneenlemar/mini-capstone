class Api::ProductsController < ApplicationController

  def all_products_method
    @products = Product.all
    render "all_products.json.jb"
  end

  def product_method
    @product = Product.first
    render "product.json.jb"
  end



  def product_query_method
    @my_query = params["id"]
    @product = Product.find_by(id: @my_query)
    render "product_query.json.jb"
  end

end

#   def product2_method
#     @product2 = Product.last
#     render "product2.json.jb"
# end
