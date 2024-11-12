class UpdateNumbers < ActiveRecord::Migration[7.2]
  def change
    rename_column :numbers, :user_id, :created_by_telegram_id
    add_reference :numbers, :user, foreign_key: true
  end
end
