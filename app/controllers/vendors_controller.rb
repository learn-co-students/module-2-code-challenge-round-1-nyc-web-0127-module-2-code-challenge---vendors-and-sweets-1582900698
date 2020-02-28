class VendorsController < ApplicationController
  include VendorsHelper

  before_action :vendor_find, only: :show 
  def index
    @vendors = Vendor.all
    @price = Vendor.all_sweet_average_price
  end

  def show
    @sweets = @vendor.sweets
  end

  private

  def vendor_find
    @vendor = Vendor.find(params[:id])
  end
end
