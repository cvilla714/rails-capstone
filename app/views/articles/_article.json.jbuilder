json.extract! article, :id, :author_id, :title, :body, :image, :created_at, :updated_at
json.url article_url(article, format: :json)
