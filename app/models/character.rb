class Character < ApplicationRecord
  has_one :ability_score, dependent: :destroy
  accepts_nested_attributes_for :ability_score, allow_destroy: true
end
