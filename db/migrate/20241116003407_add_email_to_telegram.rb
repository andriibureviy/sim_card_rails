class AddEmailToTelegram < ActiveRecord::Migration[7.2]
  def change
    add_column :telegrams, :email, :string
  end
end
