class Track < ApplicationRecord
    belongs_to :album,
    foreign_key: :album_id,
    class_name: :Album
  
    has_one :artist,
    through: :album,
    source: :artist

    validates :title, :album_id, :order, presence: true
    validates :title, uniqueness: true
    validates :order, uniqueness: { scope: :album_id }
    has_one_attached :audio_file
    validates :audio_file, presence: true
end
