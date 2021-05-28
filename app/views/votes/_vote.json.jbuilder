json.extract! vote, :id, :preference, :candidateID, :ballotID, :created_at, :updated_at
json.url vote_url(vote, format: :json)
