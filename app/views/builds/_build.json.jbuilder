json.extract! build, :id, :uuid, :message, :branch, :state, :created_at, :scheduled_at, :started_at, :finished_at, :created_at, :updated_at
json.url build_url(build, format: :json)
