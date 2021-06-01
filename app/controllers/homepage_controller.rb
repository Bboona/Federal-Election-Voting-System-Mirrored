class HomepageController < ApplicationController
  def index
  end

  def voter
    @candidates = Candidate.all
    @parties = ['Xick Nenophon Party', 'Liberals', 'Labor', 'Greens']
  end

  def results
    maxBallotID = Vote.maximum("ballotID")
    @votes = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]

    for i in 1...maxBallotID+1
      ballot = Vote.where(ballotID: i)

      ballot.each do |vote|
        @votes[vote.candidateID-1][vote.preference-1] += 1

        %% puts @votes.map { |x| x.join (' ')} %
      end
    end
  end
end
