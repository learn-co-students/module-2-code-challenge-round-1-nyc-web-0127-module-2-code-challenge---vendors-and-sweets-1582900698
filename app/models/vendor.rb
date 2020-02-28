class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    def average_price
        if self.vendor_sweets.first 
            total_price = self.vendor_sweets.map{|vs|vs.price}.sum 
            avg = total_price/self.vendor_sweets.count
            avg
        else
            puts "This vendor does not currently have any sweets."
        end
    end
end
