class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    @products = @products.order(:id => :desc)
    render "index.json.jbuilder"
  end
  def show
    input_id = params["id"]
    @product = Product.find_by(id: input_id)
    render "show.json.jbuilder"
  end
  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"]
      )
    @product.save
    render "show.json.jbuilder"
  end
  def update
    @product = Product.find_by(id: params["id"])
    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.image_url = params["image_url"] || @product.image_url
    @product.description = params["description"] || @product.description
    @product.save
    render "show.json.jbuilder"
  end
  def destroy
    @input_id = params["id"]
    product = Product.find_by(id: @input_id)
    product.destroy
    render "destroy.json.jbuilder"
  end
end
