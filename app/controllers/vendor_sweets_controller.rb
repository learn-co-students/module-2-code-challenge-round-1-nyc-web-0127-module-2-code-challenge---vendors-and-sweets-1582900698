class VendorSweetsController < ApplicationController

    def new
        @vendor_sweet = VendorSweet.new

        @vendors = Vendor.all
        @sweets = Sweet.all
    end
    
    def create
        @vendor_sweet = VendorSweet.create(vendor_sweet_params)
        if @vendor_sweet.save
            redirect_to vendor
        else
            flash[:errors] = vendor_sweet.errors.full_messages
            redirect_to new_vendor_sweet_path
    end

    private

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end

end
