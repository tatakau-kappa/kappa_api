class RemoveUniqueIndex < ActiveRecord::Migration[5.0]
  def change
    remove_index :videos, :video_uid
    remove_index :videos, :image_uid

    add_index :videos, :video_uid
    add_index :videos, :image_uid
  end
end
