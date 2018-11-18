class Supplier < ApplicationRecord
#  test this connection to replace products method
#  has_many :products

  def products
    Product.where(supplier_id: id)
  end
end
