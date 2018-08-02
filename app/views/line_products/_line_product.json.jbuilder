json.extract! line_product, :id, :item_id, :cart_id, :created_at, :updated_at
json.url line_product_url(line_product, format: :json)
