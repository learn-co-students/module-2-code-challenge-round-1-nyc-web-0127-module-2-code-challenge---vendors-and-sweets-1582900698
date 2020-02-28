class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    def self.all_sweet_average_price
        total = VendorSweet.all.map{|average| average.price}.sum
    end
    
    def average_price
       total_price = self.vendor_sweets.map {|average| average.price}.sum
       result = total_price / self.vendor_sweets.count
    end
end
