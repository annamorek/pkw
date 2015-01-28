json.array!(@votes) do |vote|
  json.extract! vote, :id, :vote, :valid, :invalid, :empty, :other, :card
  json.url vote_url(vote, format: :json)
end
