class SalesController < ApplicationController
  before_action :set_products, :set_clients, only: %i[new create]

  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)

    if @sale.save
      redirect_to listing_sales_path
    else
      render 'new'
    end
  end

  private

  def set_clients
    @clients = Client.all.select(:id, :name).map { |c| [c.name, c.id] }
  end

  def set_products
    @products = Product.all.select(:id, :name).map { |p| [p.name, p.id] }
  end

  def sale_params
    params.require(:sale).permit(:client_id, { product_ids: [] })
  end
end
