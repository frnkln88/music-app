class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :artist_id
      t.integer :track_id
      t.string :genre
      t.integer :year
      t.text :description
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
