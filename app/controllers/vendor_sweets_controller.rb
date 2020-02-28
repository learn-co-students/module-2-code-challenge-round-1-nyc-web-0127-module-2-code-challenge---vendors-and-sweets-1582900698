class VendorSweetsController < ApplicationController

    def new
        @vs = VendorSweet.new
    end

    def create
        @vs = VendorSweet.create(vs_params)
        @vendor = vs_params[:vendor_id]
        if @vs.valid?
            redirect_to vendor_path(@vendor)

        else
            flash[:errors] = @vs.errors.full_messages
            redirect_to new_vendor_sweet_path
        end
    end

    private

    def vs_params
        params.require(:vendor_sweet).permit(:sweet_id, :vendor_id, :price)
    end
end
