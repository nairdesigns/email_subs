json.extract! task, :id, :project_id, :complete, :created_at, :updated_at
json.url task_url(task, format: :json)
