class MessageSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :message
end
