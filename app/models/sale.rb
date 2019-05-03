class Sale < ApplicationRecord
  belongs_to :client

  def products
    Product.where(id: product_ids)
  end

  def parsed_created_at
    created_at.strftime('%d/%m/%Y')
  end
end
