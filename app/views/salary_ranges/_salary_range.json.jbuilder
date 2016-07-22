json.extract! salary_range, :id, :min_salary, :max_salary, :job_id, :created_at, :updated_at
json.url salary_range_url(salary_range, format: :json)