require 'rails_helper'

RSpec.describe CandidatesController, type: :request do
  describe "Creating a new candidate" do
    it "Should Open the candidate show page link successfully" do
      @c1=Candidate.create(first_name: 'Rick', last_name: 'James', associated_party: 'Greens', state: 'SA')
      get "/candidates/1"
      expect(response).to have_http_status(:success)
    end

    it "Should Display the new candidates details" do
      @c1=Candidate.create(first_name: 'Rick', last_name: 'James', associated_party: 'Greens', state: 'SA')
      get "/candidates/1"
      expect(response.body).to include("Rick")
      expect(response.body).to include("James")
      expect(response.body).to include("Greens")
      expect(response.body).to include("SA")
    end
  end
end
