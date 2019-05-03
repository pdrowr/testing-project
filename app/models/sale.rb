class Sale < ApplicationRecord
  belongs_to :client

  def products
    Product.where(id: product_ids)
  end
end
