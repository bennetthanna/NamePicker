class Prize < ApplicationRecord
  has_and_belongs_to_many :contestants
  validates :title, presence: true, length: { minimum: 5 }
end
