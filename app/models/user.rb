class User < ApplicationRecord
  # Relationship
  has_many :worksheets, dependent: :destroy

  # Validations
  validates :name, :provider, presence: true
  validates :uuid,
            presence: true,
            uniqueness: { case_sensitive: false, scope: :provider}
end
