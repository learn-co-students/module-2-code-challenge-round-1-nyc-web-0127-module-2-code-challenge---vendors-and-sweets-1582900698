class VendorSweetsController < 
    def new 
        @vendor_sweet = VendorSweet.new 
    
        @vendors = Vendor.all
        @sweets = Sweet.all
     end 

end


def create
    @vendor_sweet = VendorSweet.create(vendor_sweet_params)

    redirect_to vendor(@vendor_sweet.vendor.id)
  end 

  private 

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id)
  end 
end