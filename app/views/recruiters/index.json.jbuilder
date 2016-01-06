json.array!(@recruiters) do |recruiter|
  json.extract! recruiter, :id, :first_name, :last_name, :email
  json.url recruiter_url(recruiter, format: :json)
end
