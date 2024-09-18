class CreatePlatforms < ActiveRecord::Migration[7.2]
  def up
    create_table :platforms do |t|
      t.string :text_code, null: false
      t.string :ref_code
      t.timestamps
    end

    add_index :platforms, :text_code, unique: true

    Platform.create!(text_code: 'blum', ref_code: 'T7XSYeIU9L')
  end

  def down
    drop_table :platforms
  end
end
