class OptionSerializer < ActiveModel::Serializer
  attributes :id, :date

  belongs_to :event
end
