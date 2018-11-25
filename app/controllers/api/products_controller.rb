class Api::ProductsController < ApplicationController
#  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all

    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end

    search = params[:name]
    if search
      @products = @products.where("name ILIKE ?", "%#{search}%")
    end

    price_sort = params[:price_sort]
    if price_sort
      @products = @products.order(:price)
    else
      @products = @products.order(:id => :asc)
    end
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
      description: params["description"],
      supplier_id: params["supplier_id"]
      )
    if @product.save
    #   Image.create(
    #     url: params[:image_url],
    #     product_id: @product.id
    #   )
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end
  def update
    @product = Product.find_by(id: params["id"])
    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.description = params["description"] || @product.description
    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end
  def destroy
    @input_id = params["id"]
    product = Product.find_by(id: @input_id)
    product.destroy
    render "destroy.json.jbuilder"
  end
end
