json.extract! candidate, :id, :first_name, :last_name, :associated_party, :state, :candidate_id, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
