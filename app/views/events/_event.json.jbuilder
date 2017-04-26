json.extract! event, :id, :name, :date, :requirement_id, :requirement_progress, :created_at, :updated_at
json.url event_url(event, format: :json)
