class VendorSweetsController < ApplicationController
    def new
        @vendorsweet = VendorSweet.new
        @sweets = Sweet.all
        @vendors = Vendor.all
        render :new
    end

    def create
        @sweets = Sweet.all
        @vendors = Vendor.all
        @vendorsweet = VendorSweet.new(vendor_id: params[:vendor][:id], sweet_id: params[:sweet][:id], price: params[:vendor_sweet][:price])
        #Yes, I know I should use a strong Param, but you should ask for a nested form...
        if @vendorsweet.save
          redirect_to "/vendors/#{params[:vendor][:id]}"
        else
          flash[:error] = @vendorsweet.errors.full_messages
          @vendorsweet = VendorSweet.new
          render :new
        end
    end
    
    
    
end
