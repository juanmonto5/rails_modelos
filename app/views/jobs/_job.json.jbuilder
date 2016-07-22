json.extract! job, :id, :title, :company, :position_id, :person_id, :created_at, :updated_at
json.url job_url(job, format: :json)