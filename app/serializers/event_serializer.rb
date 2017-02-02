class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :slug

  has_many :options
end
