json.array!(@districts) do |district|
  json.extract! district, :id, :name, :electorate, :mandate
  json.url district_url(district, format: :json)
end
