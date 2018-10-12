Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :snl do
    get"/all_products" => "products#all_products"
  end
end