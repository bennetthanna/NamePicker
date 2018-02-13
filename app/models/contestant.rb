class Contestant < ApplicationRecord
  serialize :prize_ids
  validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :prize_ids, length:
    { maximum: 3, message: 'can only choose 3 prizes' }
end
