class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :location, :avatar

  def userimage
    rails_blob_path(object.avatar, only_path: true) if object.avatar.attached?
  end
end
