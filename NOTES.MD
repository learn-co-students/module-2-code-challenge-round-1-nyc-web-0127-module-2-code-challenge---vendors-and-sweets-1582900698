######### SOMETHING I WAS TRYING FOR THE ADVANCED QUESTIONS ##########


# def create
#   @vendor_sweet = VendorSweet.create(vendor_sweet_params)
#   if VendorSweet.find(@vendor_sweet.id)
#     flash[:errors] = "Connection Already Exists"
#     redirect_to new_vendor_sweet_path
#   else
#     @vendor_sweet = VendorSweet.create(vendor_sweet_params)
#     if @vendor_sweet.valid?
#       redirect_to vendor_path(@vendor_sweet.vendor_id)
#     else 
#       flash[:errors] = @vendor_sweet.errors.full_messages
#       redirect_to new_vendor_sweet_path
#     end 
#   end

# end