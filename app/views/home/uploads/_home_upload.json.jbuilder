json.extract! home_upload, :id, :image, :created_at, :updated_at
json.url home_upload_url(home_upload, format: :json)