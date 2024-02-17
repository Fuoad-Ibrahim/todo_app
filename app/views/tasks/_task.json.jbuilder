json.extract! task, :id, :task, :deadline, :completed, :created_at, :updated_at, :user_id, :title
json.url task_url(task, format: :json)
