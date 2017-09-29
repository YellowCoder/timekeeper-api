class Worksheet < ApplicationRecord
  # Relationship
  belongs_to :user
  belongs_to :category

  # Extensions
  enum action: [:start, :stop, :pause]

  # Validations
  validates :user, :category, presence: true
end