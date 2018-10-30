json.id product.id
json.name product.name
json.price product.price
json.tax product.tax.round(2)
json.total product.total.round(2)
json.description product.description
json.categories product.categories.map{|category| category.name}
json.categories product.categories
#json.is_discounted? product.is_discounted?
#json.supplier product.supplier
#json.images product.images
#json.current_user current_user.name