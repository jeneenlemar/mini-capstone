class Api::OrdersController < ApplicationController

  # before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def create
    carted_products = current_user.carted_products.last
     # put this back in once you figure out loop!!
     #where(status: "carted")



    # carted_products.each do |carted_product|
    
#do something here......
#We need to be able to get the data from the 


    # end


    # product = Product.find(params[:product_id])
    # calculated_subtotal = params[:quantity].to_i * product.price
    # calculated_tax = calculated_subtotal * 0.09
    # calculated_total = calculated_subtotal + calculated_tax

    calculated_subtotal = carted_products.quantity * carted_products.product.price
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax



    @order = Order.new(
      user_id: current_user.id,
      # product_id: params[:product_id],
      # quantity: params[:quantity],
      # those 2 lines removed when we did new exercise

      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
      )
    @order.save


    #happy path
    if @order.save
      render "show.json.jb"

      #sad path

    else

      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @order = Order.find(params[:id])
    render "show.json.jb"
  end

end
