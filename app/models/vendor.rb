class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets


def average_sweets_price
    prices = []
    self.vendor_sweets.each do |s|
        prices << s.price
    end
    if prices != []
        avg = (prices.sum / prices.length)
    else
        avg = 0
    end
    avg
end

    # def all_sweets
    # prices = []
    #     self.vendor_sweets.each do |s|
    #         prices << s.price
    #     end
    #     if prices != []
    #         avg = (prices.sum / prices.length)
    #     else
    #         avg = 0
    #     end
    #     avg
    # end

end
