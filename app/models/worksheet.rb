class Worksheet < ApplicationRecord
  # Relationship
  belongs_to :user

  # Extensions
  enum type: [:enter, :leave, :pause]

  # Validations
  validates :user, presence: true
end