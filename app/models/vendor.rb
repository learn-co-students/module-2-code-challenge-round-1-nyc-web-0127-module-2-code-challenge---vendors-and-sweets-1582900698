class Vendor < ApplicationRecord
has_many :sweets, through: :VendorSweets
end
