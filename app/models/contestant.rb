class Contestant < ApplicationRecord
  has_and_belongs_to_many :prizes
end
