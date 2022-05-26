class User < ApplicationRecord

    has_many :albums, dependent: :destroy,
    foreign_key: :artist_id,
    class_name: :Album
  
    has_many :tracks,
    through: :albums,
    source: :tracks

    has_secure_password
    validates :username, uniqueness: true
    validates :password, length: {minimum: 2}
    has_one_attached :avatar
end
