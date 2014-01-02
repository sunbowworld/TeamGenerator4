json.array!(@steam_users_teams) do |steam_users_team|
  json.extract! steam_users_team, :id, :steam_user_id, :team_id
  json.url steam_users_team_url(steam_users_team, format: :json)
end
