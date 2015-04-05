json.array!(@users) do |user|
  json.extract! user, :id, :name, :gender, :address, :radius, :latitude, :longitude, :age, :bio
  json.url user_url(user, format: :json)
end
