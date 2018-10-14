Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get"/all_products" => "products#all_products"
    get"/one_products" => "products#one_products"
    get"/one_products/:id" => "products#one_products"
  end
end