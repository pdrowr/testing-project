class EconomicSectorsController < ApplicationController
  before_action :set_sector, only: %i[delete]

  def index
    @sectors = EconomicSector.all
  end

  def new
    @sector = EconomicSector.new
  end

  def create
    @sector = EconomicSector.new(sector_params)

    if @sector.save
      redirect_to listing_sectors_path
    else
      render 'new'
    end
  end

  def delete
    @sector.destroy
    redirect_to listing_sectors_path
  end

  private

  def set_sector
    @sector = EconomicSector.find(params[:sector_id])
  end

  def sector_params
    params.require(:economic_sector).permit(:name)
  end

end
