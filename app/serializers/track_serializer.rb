class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :album_id, :order, :audio_file

  def audiofile
    rails_blob_path(object.audio_file, only_path: true) if object.audio_file.attached?
  end
end
