require 'rails_helper'

RSpec.describe Candidate, type: :model do
  describe 'Candidate validation' do
    it 'Candidate created should be valid' do
      @c1=Candidate.new(first_name: 'Rick', last_name: 'James', associated_party: 'Greens', state: 'SA')
      expect(@c1).to be_valid
    end
  end
end
