json.array!(@posts) do |post|
  json.extract! post, :id, :content, :user_id, :category, :rating
  json.url post_url(post, format: :json)
end
