require 'rails_helper'

RSpec.describe "Logins", type: :request do
  describe "Logging in as a Voter" do
    it "Should show the voting page" do
      get voter_path
      expect(response).to have_http_status(200)
    end
  end

  describe "Logging in as an Admin" do
    it "Should show the admin page" do
      get admin_path
      expect(response).to have_http_status(200)
    end
  end
end
