Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do
    get "/all_products_url" => "products#all_products_method"
    get "/product_url" => "products#product_method"
    get "/product2_url" => "products#product_method"
    get "/product_query_url" => "products#product_query_method"
   


  end

end
