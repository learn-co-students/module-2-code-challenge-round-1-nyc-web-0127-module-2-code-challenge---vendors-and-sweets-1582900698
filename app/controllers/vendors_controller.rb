class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    total_price_of_all = VendorSweet.all.map{|vs|vs.price}.sum
    num_of_sweets_by_all_vendors = VendorSweet.all.count 
    avg = total_price_of_all/num_of_sweets_by_all_vendors
     @average_price_for_all_sweets = avg.round(2)
  end

  def show
    @vendor = Vendor.find(params[:id])
  end
  

end
