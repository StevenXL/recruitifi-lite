json.array!(@employers) do |employer|
  json.extract! employer, :id, :name, :email, :description
  json.url employer_url(employer, format: :json)
end
