class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
  end
  def create
    carted_products = current_user.carted_products.where(status: "carted")
    subtotal = 0
    tax = 0
    carted_products.each do |carted_product|
      subtotal += carted_product.product.price * carted_product.quantity
      tax += carted_product.product.tax * carted_product.quantity
    end
    @order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: subtotal + tax
    )
    @order.save
    carted_products.each do |carted_product|
      carted_product.update(status: "purchased")
      carted_product.update(order_id: @order.id)
    end
    render "show.json.jbuilder"
  end
end
