class Event < ApplicationRecord
  before_create :generate_slug

  has_many :options, inverse_of: :event

  # Allows for creation of Options at the same time as the event
  # https://forum.upcase.com/t/api-design-routing-with-nested-resources/6570
  accepts_nested_attributes_for :options

  private

  def generate_slug
    begin
      self.slug = SecureRandom.urlsafe_base64(6)
    end while Event.where(slug: self.slug).exists?
  end
end
