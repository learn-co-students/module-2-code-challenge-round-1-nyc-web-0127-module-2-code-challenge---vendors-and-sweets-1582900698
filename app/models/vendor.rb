class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    # def average_sweets_price
    #     self.vendor_sweets.map{ |vendor_sweet| vendor_sweet.price}.sum / self.vendor_sweet.length
    # end

end


