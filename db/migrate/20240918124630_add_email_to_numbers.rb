class AddEmailToNumbers < ActiveRecord::Migration[7.2]
  def change
    add_column :numbers, :email, :string
  end
end
