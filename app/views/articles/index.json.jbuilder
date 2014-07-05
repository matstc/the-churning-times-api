json.array!(@articles) do |article|
  json.extract! article, :id, :headline, :text, :author, :created_at
  json.url article_url(article, format: :json)
  json.picture do
    json.extract! article.picture, :attribution_url, :author, :title
    json.source asset_url(article.picture.path)
  end
end
