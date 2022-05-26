class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :artist_id, :title, :year, :description, :genre, :albumart

  def albumartwork
    rails_blob_path(object.albumart, only_path: true) if object.albumart.attached?
  end
end