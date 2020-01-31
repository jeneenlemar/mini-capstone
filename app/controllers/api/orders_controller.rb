class Api::OrdersController < ApplicationController

  # before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: nil,
      tax: nil,
      total: nil
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
