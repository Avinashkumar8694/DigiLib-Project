json.extract! document, :id, :user, :document_attached, :created_at, :updated_at, :subject
json.url document_url(document, format: :json)
