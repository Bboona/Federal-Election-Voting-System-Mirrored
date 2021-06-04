class RemoveCandidateIdFromcandidates < ActiveRecord::Migration[6.1]
  def change
    remove_column :candidates, :candidate_id, :integer
  end
end
