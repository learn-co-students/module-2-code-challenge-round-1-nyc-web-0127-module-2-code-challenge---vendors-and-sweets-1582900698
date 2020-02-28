class Sweet < ApplicationRecord
    has_many :vendors, through: :VendorSweets

end
