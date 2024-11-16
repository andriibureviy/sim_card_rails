class User < ApplicationRecord
  has_one :card_number
  has_one :telegram
  has_one :proxy
end
