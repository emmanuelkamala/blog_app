json.extract! article, :id, :title, :exceprt, :location, :body, :published_at, :created_at, :updated_at
json.url article_url(article, format: :json)
