class Product < ApplicationRecord
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0.00 }
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, length: { in: 10..500 }

  has_many :images
  has_many :orders
#  def images
#    Image.where(product_id: id)
#  end
  belongs_to :supplier
#  def supplier
#    Supplier.find_by(id: supplier_id)
#  end

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end
  def tax
    price * 0.09
  end
  def total
    price + tax
  end
  #def image_url_list
  #end
end