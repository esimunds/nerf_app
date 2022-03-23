class Role < ApplicationRecord
  belongs_to :player, optional: true
end
