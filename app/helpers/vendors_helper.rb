module VendorsHelper
    
 def average_price_helper(vendor_one)
    total_price = vendor_one.vendor_sweets.map {|average| average.price}.sum
    result = total_price / vendor_one.vendor_sweets.count
 end

end
 