class VendorSweetsController < ApplicationController
    
  
   
  
  def new
   @vendor_sweet = VendorSweet.new 

   @sweet = Sweet.all
   @vendor = Vendor.all 
  end

  def create
    @vendor_sweet = VendorSweet.create(vendorsweet_params)

    redirect_to vendor_path(@vendorsweet.vendor_id)
  end








private 

  def vendorsweet_params
    params.require(:vendor_sweet).permit(:sweet_id, :vendor_id, :price)
  end
    
 end