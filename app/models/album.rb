class Album < ApplicationRecord
    belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User
  
    has_many :tracks, dependent: :destroy,
    foreign_key: :album_id,
    class_name: :Track

    validates :title, :artist_id, :year, presence: true
    validates :title, uniqueness: { scope: :artist_id }
    validates :year, numericality: { minimum: 1300, maximum: 2023 }
    has_one_attached :albumart
    validates :albumart, presence: true
end
