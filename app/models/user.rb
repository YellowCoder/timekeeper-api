class User < ApplicationRecord
  # Relationship
  has_many :worksheets, dependent: :destroy

  # Validations
  validates :name, :uuid, presence: true
end
