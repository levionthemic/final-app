class CreateAlbumPhotos < ActiveRecord::Migration[8.0]
  def change
    create_table :album_photos do |t|
      t.references :album, null: false, foreign_key: true
      t.references :photo, null: false, foreign_key: true

      t.timestamps
    end

    add_index :album_photos, [ :album_id, :photo_id ], unique: true
  end
end
