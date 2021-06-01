class HomepageController < ApplicationController
  def index
  end

  def voter
    @candidates = Candidate.all
    @parties = ['Xick Nenophon Party', 'Liberals', 'Labor', 'Greens']
  end

  def results
    maxCandidateID = Vote.maximum("candidateID")
    maxPreference = Vote.maximum("preference")
    maxBallotID = Vote.maximum("ballotID")

    @votes = Array.new(maxCandidateID){Array.new(maxPreference, 0)}

    for i in 1...maxBallotID+1
      ballot = Vote.where(ballotID: i)

      ballot.each do |vote|
        @votes[vote.candidateID-1][vote.preference-1] += 1

        %% puts @votes.map { |x| x.join (' ')} %
      end
    end
  end
end
