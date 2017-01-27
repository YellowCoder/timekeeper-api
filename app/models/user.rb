class User < ApplicationRecord
  # Relationship
  has_many :worksheets, dependent: :destroy

  # Validations
  validates :name, presence: true
  validates :sso_token, presence: true
  validates_inclusion_of :sso_provider, in: %w(twitter facebook google slack)
  validates :email,
            presence: true,
            email: true,
            uniqueness: { case_sensitive: false, scope: :name}
  validates :sso_provider,
            presence: true,
            uniqueness: { case_sensitive: false, scope: :email }
end