class CreateVideoComments < ActiveRecord::Migration[5.0]
  def change
    create_table :video_comments do |t|
      t.references :user,  null: false
      t.references :video, null: false
      t.text :contents,    null: false

      t.timestamps
    end

    add_index :video_comments, %i(user_id video_id created_at)
    add_index :video_comments, %i(video_id user_id created_at)
  end
end
