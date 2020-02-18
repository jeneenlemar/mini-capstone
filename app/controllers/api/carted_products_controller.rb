class Api::CartedProductsController < ApplicationController

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render "index.json.jb"
    
  end



  def create
    carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted"
      
      )



    if carted_product.save
      render json: {msg: "product carted"}
    else
      render json: {errors: carted_product.errors.full_messages}, status: :unprocessable_entity
    end
  
  end
end
