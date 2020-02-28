class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendors = Vendor.find(params[:id])
  end

  def new 
    @vendor = Vendor.new 
  end 

  def create 
   vendor= Vendor.create(vendor_params)

   redirect_to vendor_path(vendor)
  end



  private 

  def vendor_params 
    params.require(:vendor).permit(:name)
  end 
end