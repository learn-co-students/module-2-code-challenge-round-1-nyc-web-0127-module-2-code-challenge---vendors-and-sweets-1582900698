class VendorsController < ApplicationController
  before_action :regular, only: [:show]

  def index
    @vendors = Vendor.all
  end
  

     
    def show
         
    end
    
    def new
        @vendor = Vendor.new
    end
    
    def create
        @vendor = Vendor.create(vendor_params) 
        if @vendor.valid?
          flash[:success] = "vendor successfully created"
          redirect_to @vendor
        else
          flash[:error] = @vendor.errors.full_messages
          render new_vendor_path(@vendor)
        end
    end



private 
    def regular
        @vendor = Vendor.find(params[:id])
    end

    def vendor_params
        params.require(:vendor).permit(:name)
    end 
    

end

