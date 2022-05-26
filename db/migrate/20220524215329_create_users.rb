class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :session_token
      t.string :location
      t.integer :album_id
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
