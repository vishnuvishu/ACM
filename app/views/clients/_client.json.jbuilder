json.extract! client, :id, :name, :address, :pincode, :email, :primary_mobile, :created_at, :updated_at
json.url client_url(client, format: :json)
