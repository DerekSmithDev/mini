class Api::ProductsController < ApplicationController
  def all_products
    @all_products = Product.all
    render "all_products.json.jbuilder"
  end

  def one_product
    input_id = params["id"]
    @product = Product.find_by(id: input_id)
    render "one_product.json.jbuilder"
  end
end
