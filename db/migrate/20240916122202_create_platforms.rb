class CreatePlatforms < ActiveRecord::Migration[7.2]
  def change
    create_table :platforms do |t|
      t.string :text_code, null: false

      t.timestamps
    end

    add_index :platforms, :text_code, unique: true
  end
end
