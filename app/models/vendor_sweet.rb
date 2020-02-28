class VendorSweet < ApplicationRecord
    belongs_to :sweet
    belongs_to :vendor 

    validates :price, presence: true
    validates :price, numericality: += 0 



end
