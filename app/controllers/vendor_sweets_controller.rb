class VendorSweetsController < ApplicationController
    def new
        @vendor_sweet = VendorSweet.new
        @vendors = Vendor.all
        @sweets = Sweet.all
    end
    
    def create
        @vendor_sweet = VendorSweet.new(vendor_sweet_params)
        if @vendor_sweet.save
          flash[:success] = "VendorSweet successfully created"
          redirect_to vendor_path(@vendor_sweet.vendor_id)
        else
          @vendors = Vendor.all
          @sweets = Sweet.all
          render 'new'
        end
    end

    private 

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
    
end
