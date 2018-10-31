class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user
  def index
#    @carted_products = CartedProduct.where(status: "carted")
    @carted_products = current_user.carted_products.where(status: "carted")
    render "index.json.jbuilder"
  end

  def create
    product = Product.find_by(id: params[:product_id])
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted",
#      order_id: null
    )
    @carted_product.save
    render "show.json.jbuilder"
  end

  def destroy
    input_id = params[:id]
    @carted_product = current_user.carted_products.find_by(id: input_id)
    @carted_product.status = "removed"

    if @carted_product.save
      @success = 'Product #'+"#{@carted_product.id}"+' Successfully Removed from Your Cart '+"#{current_user.name}"
      render json: {Cart: @success}, status: :gone
    else
      render json: {errors: @carted_product.errors.full_messages}, status: :bad_request
    end
  end
end
