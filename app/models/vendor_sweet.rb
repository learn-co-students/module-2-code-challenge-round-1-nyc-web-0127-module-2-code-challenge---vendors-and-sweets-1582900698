class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :vendor_id, uniqueness: { scope: :sweet_id, message: "That relation already exists"  }
  validates :price, numericality: { greater_than: 0 }
end
