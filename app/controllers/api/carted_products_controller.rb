class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user

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
end
