class CardNumber < ApplicationRecord
  self.table_name ="numbers"
  belongs_to :user, optional: true
  has_one :telegram, through: :user

  has_and_belongs_to_many :platforms,
                          join_table: 'numbers_platforms',
                          foreign_key: 'number_id',
                          association_foreign_key: 'platform_id'
end

