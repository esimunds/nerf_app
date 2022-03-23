class Role < ApplicationRecord
  belongs_to :player, optional: true

  validates :name, presence: true
  validates :team, presence: true
end
