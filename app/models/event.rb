class Event < ApplicationRecord
    has_many :options, inverse_of: :event

    # Allows for creation of Options at the same time as the event
    accepts_nested_attributes_for :options
end
