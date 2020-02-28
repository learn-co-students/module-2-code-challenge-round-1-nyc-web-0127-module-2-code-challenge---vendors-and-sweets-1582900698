class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :vendor_sweet, presence: true, allow_blank: false
  validates :vendor_sweet, :numericality => { :greater_than_or_equal_to => 0 }
end
