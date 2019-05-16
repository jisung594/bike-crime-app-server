class ReportSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :incident_id
end
