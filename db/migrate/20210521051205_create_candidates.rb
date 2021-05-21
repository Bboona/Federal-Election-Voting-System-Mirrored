class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :associated_party
      t.string :state
      t.integer :candidate_id

      t.timestamps
    end
  end
end
