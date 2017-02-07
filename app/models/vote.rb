class Vote < ApplicationRecord
  validates :name, presence: true

  belongs_to :option
end
