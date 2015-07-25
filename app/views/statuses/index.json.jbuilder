json.array!(@statuses) do |status|
  json.extract! status, :id, :user, :comment
  json.url status_url(status, format: :json)
end
