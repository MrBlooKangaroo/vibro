class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :time, null: false
      t.integer :waves, default: 0
      t.string :audio_file
      t.boolean :accepted, default: false

      t.belongs_to :user, null: false
      t.belongs_to :vibe, null: false
      t.belongs_to :mix, null: false

      t.timestamps null: false
    end
  end
end
