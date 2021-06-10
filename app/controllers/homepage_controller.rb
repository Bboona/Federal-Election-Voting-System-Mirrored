class HomepageController < ApplicationController
  def index
  end

  def voter
    @candidates = Candidate.all
    @parties = ['Xick Nenophon Party', 'Liberals', 'Labor', 'Greens']
  end

  def results
    maxCandidateID = Candidate.maximum("id")
    maxPreference = Vote.maximum("preference")
    maxBallotID = Vote.maximum("ballotID")

    @votes = Array.new(maxCandidateID){Array.new(13, 0)}
    @candidate = Candidate.all

    if !maxBallotID.nil?
      for i in 0...maxBallotID+1
        ballot = Vote.where(ballotID: i)

        ballot.each do |vote|
          if vote.preference <= 12
            @votes[vote.id-1][vote.preference-1] += 1
          else
            @votes[vote.id-1][12] += 1
          end
        end
      end
    end

  end
end
