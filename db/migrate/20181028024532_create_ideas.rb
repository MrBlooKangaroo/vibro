class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.string :audio_file
      t.integer :fire
      t.integer :ice
      t.boolean :accepted, default: false

      t.belongs_to :user, null: false
      t.belongs_to :vibe, null: false

      t.timestamps null: false
    end
  end
end