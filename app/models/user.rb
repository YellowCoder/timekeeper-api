class User < ApplicationRecord
  # Extensions
  has_secure_password validations: false

  # Relationship
  has_many :worksheets, dependent: :destroy

  # Validations
  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false }
  validates :timezone, presence: true
end
