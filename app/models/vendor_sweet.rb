class VendorSweet < ApplicationRecord
    validates :price, presence: true
    validates :price, :greater_than {0}
    belongs_to :vendors
    belongs_to :sweets
end
