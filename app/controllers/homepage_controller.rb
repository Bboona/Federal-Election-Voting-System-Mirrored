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

    @votes = Array.new(maxCandidateID){Array.new(13, 0)}

    for i in 0...maxBallotID+1
      ballot = Vote.where(ballotID: i)

      ballot.each do |vote|
        if vote.preference <= 12
          @votes[vote.candidateID-1][vote.preference-1] += 1
        else
          @votes[vote.candidateID-1][12] += 1
        end
      end
    end
  end
end
