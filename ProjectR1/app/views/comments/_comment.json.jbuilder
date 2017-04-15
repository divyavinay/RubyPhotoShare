json.extract! comment, :id, :comment_text, :date_time, :user_id, :photo_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
