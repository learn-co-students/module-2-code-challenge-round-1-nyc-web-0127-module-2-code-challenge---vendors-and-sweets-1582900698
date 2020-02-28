class Sweet < ApplicationRecord
    has_many :vendor_sweets
    has_many :vendors, through: :vendor_sweets

    def sweet_average_price
        sweet_price_sum = 0
        self.vendor_sweets.each do |sweet|
            sweet_price_sum += sweet.price
        end
        sweet_price_sum / self.vendor_sweets.count
    end
end
