json.extract! item, :id, :title, :description, :slug, :metatitle, :metadescription, :metakeywords, :price, :publish, :quantity, :created_at, :updated_at
json.url item_url(item, format: :json)
