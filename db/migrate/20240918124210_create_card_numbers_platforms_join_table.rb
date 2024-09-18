class CreateCardNumbersPlatformsJoinTable < ActiveRecord::Migration[7.2]
  def change
    create_table :numbers_platforms, id: false do |t|
      t.references :number, null: false, foreign_key: true
      t.references :platform, null: false, foreign_key: true
    end

    add_index :numbers_platforms, [:number_id, :platform_id], unique: true
  end
end
