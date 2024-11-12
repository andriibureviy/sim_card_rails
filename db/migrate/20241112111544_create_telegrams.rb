class CreateTelegrams < ActiveRecord::Migration[7.2]
  def change
    create_table :telegrams do |t|
      t.string :name
      t.string :surname
      t.string :username
      t.string :phone
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
