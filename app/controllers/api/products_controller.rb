class Api::ProductsController < ApplicationController

  
  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name iLIKE ?", "%#{params[:search]}%")
    end

    if params[:discount] #here we are looking for discount to be true
      @products = @products.where("price < ?", 10) #pull out from the array, any item that price is less than 10
    end


    #This was from class and left in as reference

    # if params[:sort] == "price" && params[:sort_order] == "asc"  
    #   @products = @products.order(:price)
    # elsif params[:sort] == "price" && params[:sort_order] == "desc"
    #   @products = @products.order(price: :desc)
    # else
    #   @products = @products.order(:id)
    # end

    #did this version below because the order of this one made all the ones below NOT WORK!!!!!!!


    if params[:sort] == "price" && params[:sort_order] == "asc"  
      @products = @products.order(:price)
    else params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    end

    #Get all products with a title that begins with "T".

    if params[:title]
      @products = @products.where("name iLIKE ?", "T%")
    end

    
    ####### KEEP THIS ONE LAST so the else will trigger after ALL items above have checked, but tested FALSE!!!!


    
    # et the last 3 products entered into the database. 
    if params[:record] == "created_at" && params[:record_order] == "asc"  
      @products = @products.order(:created_at)
    elsif params[:record] == "created_at" && params[:record_order] == "desc"
      @products = @products.order(created_at: :desc).limit(3)
    else
      @products = @products.order(:id)
    end

    

    #####count not working, try later!

    # if params[:count]
    #   @products = @products.where("orders_count = ?" params[:count])
    # end









    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id: params["id"])
    render "show.json.jb"
  end

  #Note - I am going to RENDER to the show file since I want to see the same things as I did for the individual product!!!!

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      image_url: params["image_url"]
      )
    @product.save

    #happy path
    if @product.save

      render "show.json.jb"

    #sad path
    else

      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end

    
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.image_url = params[:image_url] || @product.image_url

    @product.save

    #happy path

    if @product.save

      render "show.json.jb"

    #sad path
    else

      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render json: {message: "item successfully deleted"}
  end


  def path_control_error
    #put repetitive code here!!!!!!!!!


  end

  # def all_products_method
  #   @products = Product.all
  #   render "all_products.json.jb"
  # end

  # def product_method
  #   @product = Product.first
  #   render "product.json.jb"
  # end



  # def product_query_method
  #   @my_query = params["id"]
  #   @product = Product.find_by(id: @my_query)
  #   render "product_query.json.jb"
  # end

end

#   def product2_method
#     @product2 = Product.last
#     render "product2.json.jb"
# end
