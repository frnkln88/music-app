class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :album_id
      t.integer :order
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
