class Event < ApplicationRecord
  include Tokenable

  before_validation(on: :create) { generate_token(:slug, 6) }

  validates :title, presence: true
  validates :location, presence: true
  validates :slug, uniqueness: true

  has_many :options, inverse_of: :event

  # Allows for creation of Options at the same time as the event
  # https://forum.upcase.com/t/api-design-routing-with-nested-resources/6570
  accepts_nested_attributes_for :options
end
