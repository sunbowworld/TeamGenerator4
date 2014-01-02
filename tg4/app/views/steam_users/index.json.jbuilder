json.array!(@steam_users) do |steam_user|
  json.extract! steam_user, :id, :steam_id_64
  json.url steam_user_url(steam_user, format: :json)
end
