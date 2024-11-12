class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :ads_power_profile_id
      t.string :ads_power_sequence_id
      t.jsonb :notes
      t.bigint :group_id
      t.bigint :subgroup_id

      t.timestamps
    end
  end
end
