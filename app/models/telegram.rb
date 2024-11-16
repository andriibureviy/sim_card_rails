class Telegram < ApplicationRecord
  has_one :card_number, through: :user
  belongs_to :user
end
