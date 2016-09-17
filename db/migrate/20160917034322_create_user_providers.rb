class CreateUserProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :user_providers do |t|
      t.references :user,     null: false
      t.string :access_token, null: false
      t.string :name,         null: false
      t.string :uid,          null: false

      t.timestamps
    end

    add_index :user_providers, %i(user_id name), unique: true
    add_index :user_providers, %i(access_token name)
  end
end
