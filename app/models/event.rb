class Event < ApplicationRecord
    has_many :options, inverse_of: :event

    # Allows for creation of Options at the same time as the event
    # https://forum.upcase.com/t/api-design-routing-with-nested-resources/6570
    accepts_nested_attributes_for :options
end
