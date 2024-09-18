class CardNumber < ApplicationRecord
  self.table_name ="numbers"

  has_and_belongs_to_many :platforms,
                          join_table: 'numbers_platforms',
                          foreign_key: 'number_id',
                          association_foreign_key: 'platform_id'
end

