class VendorSweetsController < ApplicationController
  def index
    @vendor_sweets = VendorSweet.all
  end

  def new
    @vendors = Vendor.all
    @sweets = Sweet.all
    @vendor_sweet = VendorSweet.new
  end

  def create
    vendor_sweet = VendorSweet.create(p_params)
    redirect_to vendor_sweets_path
  end

  private

  def p_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
  end
end
