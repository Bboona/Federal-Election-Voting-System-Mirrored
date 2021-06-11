class FixColNameBallotCandidate < ActiveRecord::Migration[6.1]
  def change
    change_table :votes do |t|
      t.rename :candidateID, :candidateid
      t.rename :ballotID, :ballotid
    end
  end
end
