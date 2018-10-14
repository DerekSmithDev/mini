Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get"/all_products" => "products#all_products"
    get"/one_product" => "products#one_product"
    get"/one_product/:id" => "products#one_product"
  end
end