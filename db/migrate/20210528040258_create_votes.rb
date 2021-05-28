class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
      t.integer :preference
      t.integer :candidateID
      t.integer :ballotID

      t.timestamps
    end
  end
end
