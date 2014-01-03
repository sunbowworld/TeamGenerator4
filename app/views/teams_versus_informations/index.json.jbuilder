json.array!(@teams_versus_informations) do |teams_versus_information|
  json.extract! teams_versus_information, :id, :versus_information_id, :team_id, :score
  json.url teams_versus_information_url(teams_versus_information, format: :json)
end
