json.extract! bikepost, :id, :title, :address, :description, :oblast, :city, :created_at, :updated_at
json.url bikepost_url(bikepost, format: :json)
