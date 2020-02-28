class VendorSweetsController < ApplicationController

    def new
        @vendor_sweet = VendorSweet.new
        @vendors = Vendor.all
        @sweets = Sweet.all

    end

    def create
        @vendor_sweet = VendorSweet.create(vs_params)

        # if @vendor_sweet.valid?

        redirect_to vendor_path(@vendor_sweet.vendor_id)

        # else
        #     flash[:error] = @vendor_sweet.errors.full_messages
        #     redirect_to new_vendor_sweets_path
        # end

    end

    private

    def vs_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end

