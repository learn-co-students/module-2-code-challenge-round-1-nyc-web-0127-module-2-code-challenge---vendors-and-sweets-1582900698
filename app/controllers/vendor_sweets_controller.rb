class VendorSweetsController < ApplicationController
    before_action :regular, only: [:show]

  def index
    @vendor_sweets = VendorSweet.all
  end
 
    def show
         
    end
    
    def new
        @vendor_sweet = VendorSweet.new
    end
    
    def create
        @vendor_sweet = VendorSweet.create(vendor_sweet_params) 
        if @vendor_sweet.valid?
          flash[:success] = "vendor_sweet successfully created"
          redirect_to vendor_path(@vendor_sweet.vendor_id)
        else
          flash[:error] = @vendor_sweet.errors.full_messages
          render new_vendor_sweet_path(@vendor_sweet)
        end
    end



private 
    def regular
        @vendor_sweet = VendorSweet.find(params[:id])
    end

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end 
    
end
