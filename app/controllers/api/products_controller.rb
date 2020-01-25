class Api::ProductsController < ApplicationController

  
  def index
    #change to allow for search by name
    # can I pass hard code name first? - done
    # can I do with simple query
    #with param


# index allows search by name
    # @products = Product.where("name LIKE ?", "%#{params[:search]}%")

    #index allow uer to siplay all products under 10 dollars

  @products = Product.where("price < ?", params[:price])


  

    # @products = Product.where(name: "pants")
    render "index.json.jb"
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
