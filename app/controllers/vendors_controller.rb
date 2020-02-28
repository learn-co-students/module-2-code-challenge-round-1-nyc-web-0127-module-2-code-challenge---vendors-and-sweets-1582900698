class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    @average_all = Vendor.average_all_sweets
  end

  def show
    @vendor = Vendor.find(params[:id])
  end
  


end
