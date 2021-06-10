require 'rails_helper'

RSpec.describe Candidate, type: :model do
  describe 'Candidate validation' do

    before(:all) do
      @c1=Candidate.new(first_name: 'Rick', last_name: 'James', associated_party: 'Greens', state: 'SA')
    end

    it 'Candidate created should be valid' do
      expect(@c1).to be_valid
    end
  end

  describe 'Editing Candidate information' do
    before(:all) do
      @c1=Candidate.new(first_name: 'Rick', last_name: 'James', associated_party: 'Greens', state: 'SA')
    end
    it 'Should change the candidate information' do
      @c1.update(:associated_party => "Labor")
      expect(Candidate.find_by_associated_party("Labor")).to eq(@c1)
    end
  end

end
