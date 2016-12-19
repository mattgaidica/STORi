json.extract! source, :id, :user_id, :title, :image, :doi, :created_at, :updated_at
json.url source_url(source, format: :json)