class Player < ApplicationRecord
  has_one :role

  validates :name, presence: true, length: { maximum: 12 }
  validates_uniqueness_of :name
end
