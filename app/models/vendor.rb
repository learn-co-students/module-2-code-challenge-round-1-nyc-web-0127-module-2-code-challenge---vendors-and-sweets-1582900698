class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    # def total_price
    #     self.sweets.reduce(0) { |sum, sweet| sum + sweet.price}
    # end

    # def num_sweets
    #     self.sweets.length  
    # end

    # def avg_price
    #     self.total_price / self.num_sweets
    # end


end
