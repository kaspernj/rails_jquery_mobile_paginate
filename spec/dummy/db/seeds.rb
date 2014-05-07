1.upto(150) do |id|
  puts "Upserting product #{id}"
  product = Product.find_or_initialize_by(:id => id)
  product.name = "Product #{id}"
  product.save!
end
