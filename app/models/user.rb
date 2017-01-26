class User < ApplicationRecord
  # Relationship
  has_many :authentications, dependent: :destroy

  # Validations
  validates :name, presence: true
  validates :email,
            presence: true,
            email: true,
            uniqueness: { case_sensitive: false, scope: :name}
end