json.array!(@users) do |user|
  json.extract! user, :id, :handle, :password, :email, :planet_id
  json.url user_url(user, format: :json)
end
