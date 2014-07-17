json.array!(@status_updates) do |status_update|
  json.extract! status_update, :id, :description, :project_id, :user_id
  json.url status_update_url(status_update, format: :json)
end
