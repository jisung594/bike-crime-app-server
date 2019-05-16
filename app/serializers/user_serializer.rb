class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :location
end
