class BowlGame < ApplicationRecord
  belongs_to :team
  belongs_to :bowl
end
