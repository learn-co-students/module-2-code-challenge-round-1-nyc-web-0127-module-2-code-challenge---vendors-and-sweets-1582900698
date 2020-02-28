class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    @vendor_average_price = Vendor.vendor_average_price(params[:id])
    @sweet_average_price = Sweet.sweet_average_price
  end

  def show
    @vendor = Vendor.find(params[:id])
  end
end
