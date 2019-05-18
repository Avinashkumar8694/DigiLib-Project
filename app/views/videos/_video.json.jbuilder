json.extract! video, :id, :title, :link, :created_at, :updated_at, :subject
json.url video_url(video, format: :json)
