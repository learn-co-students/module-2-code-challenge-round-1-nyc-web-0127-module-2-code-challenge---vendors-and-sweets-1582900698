class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet
  validates :price, presence: true, numericality: {greater_than: 0}
  
  validates_uniqueness_of :vendor_id, scope: :sweet_id, message: "and Sweet pair must be unique"
end
