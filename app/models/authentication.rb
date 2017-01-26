class Authentication < ApplicationRecord
  # Relationship
  belongs_to :user

  # Validations
  validates :uid, presence: true
  validates :provider,
            presence: true,
            uniqueness: { case_sensitive: false, scope: :uid }
  validates_inclusion_of :provider, in: %w(twitter facebook google slack)
end