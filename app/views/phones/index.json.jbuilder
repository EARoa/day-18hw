json.array!(@phones) do |phone|
  json.extract! phone, :id, :name, :brand, :photo_url, :price, :instock
  json.url phone_url(phone, format: :json)
end
