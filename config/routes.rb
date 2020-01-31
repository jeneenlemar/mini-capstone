Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do

#make your all products route, method, view and test basics! - done
#repeat process for show - done
# repeat process for post - done
# repeat for update - done
# repeat for delete - 

    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "products/:id" => "products#update"
    delete "products/:id" => "products#destroy"

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"
    get "/orders/:id" => "orders#show"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"
    # get "/all_products_url" => "products#all_products_method"
    # get "/product_url" => "products#product_method"
    # get "/product2_url" => "products#product_method"
    # get "/product_query_url" => "products#product_query_method"
   


  end

end
