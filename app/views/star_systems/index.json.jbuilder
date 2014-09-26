json.array!(@star_systems) do |star_system|
  json.extract! star_system, :id, :name
  json.url star_system_url(star_system, format: :json)
end
