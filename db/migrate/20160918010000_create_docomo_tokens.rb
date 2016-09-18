class CreateDocomoTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :docomo_tokens do |t|
      t.string :token, null: false
      t.integer :user_id

      t.timestamps
    end

    add_index :docomo_tokens, :token, unique: true
    add_index :docomo_tokens, :user_id, unique: true
  end
end
