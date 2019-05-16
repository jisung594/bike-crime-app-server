class IncidentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :address, :occurred_at, :type_of, :image
end
