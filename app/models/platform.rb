class Platform < ApplicationRecord

  has_and_belongs_to_many :card_numbers,
                          join_table: 'numbers_platforms',
                          foreign_key: 'platform_id',
                          association_foreign_key: 'number_id'
end
