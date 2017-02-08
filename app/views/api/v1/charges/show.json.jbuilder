json.status 'success'
json.message 'Thank you for your order <3'
json.order_items @order.shopping_cart_items.each do |item|
  json.name item.item.name
  json.price item.price
  json.ready_time item.item.ready_time
end
json.total @order.total.to_i*100
