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

  describe 'Viewing Candidate information' do
    it 'checks that a candidate can be viewed' do
      @c1=Candidate.create(first_name: 'Rick', last_name: 'James', associated_party: 'Greens', state: 'SA')
      get "/candidates/1"
      expect(response.body).to include("Rick")
      expect(response.body).to include("James")
      expect(response.body).to include("Greens")
      expect(response.body).to include("SA")
    end
  end

  describe 'Adding a party to the voting system' do
    it 'checks that party shows up for voting' do
      @c1=Candidate.create(first_name: 'Rick', last_name: 'James', associated_party: 'Greens', state: 'SA')
      get "/voter"
      expect(response.body).to include("Greens")
    end
  end
end
