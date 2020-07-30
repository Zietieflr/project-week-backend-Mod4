class Character < ApplicationRecord
  has_one :ability_score
  accepts_nested_attributes_for :ability_score, allow_destroy: true
end
