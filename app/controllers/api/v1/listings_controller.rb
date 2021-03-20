class Api::V1::ListingsController < Api::V1::BaseController
  before_action :set_restaurant, only: [ :show ]

  def index
    @listings = Listing.all
  end

  def show
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
