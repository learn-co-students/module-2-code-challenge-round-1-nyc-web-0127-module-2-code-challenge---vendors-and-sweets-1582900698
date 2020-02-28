class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    def average_price
        return self.sweets.average(:price).round(0)/100
    end

end
