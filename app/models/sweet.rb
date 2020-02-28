class Sweet < ApplicationRecord
    has_many :vendor_sweets
    has_many :vendors, through: :vendor_sweets

    def sweet_average_price
        sum = 0
        Sweet.all.each do |sweet|
            sum += sweet.price
        end.average
    end
end
