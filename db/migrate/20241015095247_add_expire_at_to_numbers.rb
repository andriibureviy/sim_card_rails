class AddExpireAtToNumbers < ActiveRecord::Migration[7.2]
  def change
    add_column :numbers, :expire_at, :datetime
  end
end
