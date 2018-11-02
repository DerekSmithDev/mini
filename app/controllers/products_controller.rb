class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end
  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end
  def new
    render "new.html.erb"
  end
  def create
    @product = Product.new(
      name: params[:form_title],
      price: params[:price].to_i,
      description: params[:description],
      supplier_id: params[:supplier_id].to_i,
      user_id: 1
    )
    @product.save
    redirect_to "/products"
  end
end
