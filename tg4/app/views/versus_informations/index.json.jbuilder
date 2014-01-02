json.array!(@versus_informations) do |versus_information|
  json.extract! versus_information, :id, :versus_at
  json.url versus_information_url(versus_information, format: :json)
end
