class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    def vendor_average_price
        vendor_price_sum = 0
        self.vendor_sweets.each do |vendor|
            vendor_price_sum += vendor.price
        end
        if vendor_price_sum == 0
            nil

        else
            vendor_price_sum / self.vendor_sweets.count
        end
    end
end
