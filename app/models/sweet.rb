class Sweet < ApplicationRecord
    has_many :vendor_sweets
    has_many :vendors, through: :vendor_sweets

    # def average_price
    #     self.vendor_sweets.each do |price|
    #         price.sum / 2
    #     end
    # end
    
end
