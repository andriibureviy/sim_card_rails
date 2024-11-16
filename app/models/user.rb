class User < ApplicationRecord
  has_one :card_number
  has_one :telegram
  has_one :proxy


  scope :search, ->(term) {
    left_joins(:card_number)
      .where("ads_power_profile_id ILIKE :term OR numbers.number ILIKE :term", term: "%#{term}%")
  }
end
