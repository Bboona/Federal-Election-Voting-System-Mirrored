class Candidate < ApplicationRecord
  validates_presence_of :first_name, :last_name, :associated_party
end
