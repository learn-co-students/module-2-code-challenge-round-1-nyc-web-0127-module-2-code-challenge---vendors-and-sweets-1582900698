class VendorSweetsController < ApplicationController

def new
    @vendor_sweet = VendorSweet.new
    @vendors = Vendor.all
    @sweets = Sweet.all
end


####Couldn't get strong params to work on uniqueness validation so resorted to below
# def create
#     @vendor_sweet = VendorSweet.new(vendor_sweet_params)
#     if @vendor_sweet.save
#       flash[:success] = "VendorSweet successfully created"
#       redirect_to vendor_path(@vendor_sweet.vendor_id)
#     else
#       flash[:errors] = @vendor_sweet.errors.full_messages
#       redirect_to new_vendor_sweet_path
#     end
# end

def create
    @vendor_sweet = VendorSweet.new(vendor_id: params[:vendor_sweet][:vendor_id], sweet_id: params[:vendor_sweet][:sweet_id], price: params[:vendor_sweet][:price], vendor_sweet_id: params[:vendor_sweet][:vendor_id].to_s + params[:vendor_sweet][:sweet_id].to_s)
    if @vendor_sweet.save
      flash[:success] = "VendorSweet successfully created"
      redirect_to vendor_path(@vendor_sweet.vendor_id)
    else
      flash[:errors] = @vendor_sweet.errors.full_messages
      redirect_to new_vendor_sweet_path
    end
end

private

def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price,)
end

####Couldn't get this to work so stopped using strong params on association uniqueness validation

# def vendor_sweet_params
#     params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price, vendor_sweet_id: (:vendor_id.to_s + :sweet_id.to_s))
# end


end
