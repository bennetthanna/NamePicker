class Contestant < ApplicationRecord
  serialize :prize_ids
  validates :name, presence: true, length: { minimum: 2 }
end
