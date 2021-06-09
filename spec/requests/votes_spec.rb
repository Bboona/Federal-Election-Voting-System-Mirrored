require 'rails_helper'

RSpec.describe VotesController, type: :request do
  describe "Creating a new Ballot" do
    it "Should Display the new ballot" do
      @c1=Vote.create(preference: '12', candidateID: '1', ballotID: '1')
      get "/votes"
      expect(response.body).to include("12")
    end
  end
end
