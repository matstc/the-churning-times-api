json.extract! @article, :id, :headline, :text, :author, :lead, :created_at
json.picture do
  json.extract! @article.picture, :attribution_url, :author, :title
  json.source asset_url(@article.picture.path)
end
