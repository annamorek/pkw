json.array!(@voivodeships) do |voivodeship|
  json.extract! voivodeship, :id, :name
  json.url voivodeship_url(voivodeship, format: :json)
end
