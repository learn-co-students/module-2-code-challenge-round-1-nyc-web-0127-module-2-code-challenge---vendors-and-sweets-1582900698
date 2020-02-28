class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets
    
    def vendor_average_price(id)
        vendor = Vendor.find(params[:id])
        sum = 0
        vendor.sweets.each do |sweet|
            sum +=sweet.price
        end.average
    end
end
