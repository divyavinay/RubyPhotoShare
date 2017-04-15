json.extract! photo, :id, :file_name, :date_time, :user_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
