json.array!(@games) do |game|
  json.extract! game, :id, :user_id, :id
  json.url game_url(game, format: :json)
end
