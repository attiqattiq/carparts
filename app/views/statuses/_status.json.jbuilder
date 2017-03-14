json.extract! status, :id, :status_id, :state, :remarks, :project_id, :created_at, :updated_at
json.url status_url(status, format: :json)