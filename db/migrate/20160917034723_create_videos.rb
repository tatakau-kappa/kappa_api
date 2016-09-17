class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.references :user,     null: false
      t.string :video_uid, null: false
      t.string :image_uid, null: false
      t.string :swapped_uid
      t.string :thumbnail_uid
      t.string :program_name
      t.integer :view_count,  null: false, default: 0

      t.timestamps
    end

    add_index :videos, :video_uid, unique: true
    add_index :videos, :image_uid, unique: true
    add_index :videos, :swapped_uid, unique: true
    add_index :videos, :thumbnail_uid, unique: true
    add_index :videos, :created_at
  end
end
