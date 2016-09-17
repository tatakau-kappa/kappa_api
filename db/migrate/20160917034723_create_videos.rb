class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.references :user,     null: false
      t.string :original_uid, null: false
      t.string :swapped_uid
      t.string :thumbnail_uid
      t.string :program_name

      t.timestamps
    end

    add_index :videos, :original_uid, unique: true
    add_index :videos, :swapped_uid, unique: true
    add_index :videos, :thumbnail_uid, unique: true
    add_index :videos, :created_at
  end
end
