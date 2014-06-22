json.array!(@articles) do |article|
  json.extract! article, :id, :headline, :text
  json.url article_url(article, format: :json)
end
