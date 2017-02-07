class Option < ApplicationRecord
  belongs_to :event

  validates :date, presence: true

  has_many :votes
end
