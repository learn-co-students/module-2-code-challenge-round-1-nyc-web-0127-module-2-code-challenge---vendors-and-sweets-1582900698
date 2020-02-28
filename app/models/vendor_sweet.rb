class VendorSweet < ApplicationRecord
    belongs_to :vendor 
    belongs_to :sweet
    validates :price, presence: true
    validates :price, numericality: {greater_than: 0, message: "This is not a valid price"}
    validates :vendor_id, uniqueness: true
    validates :sweet_id, uniqueness: true

end
