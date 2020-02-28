class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    def average_price
        vendor_sweets.average(:price)
    end

    def self.average_all_sweets
        sum = 0
        all.each do |v|
            sum += v.average_price
        end
        sum / all.count
    end
end
