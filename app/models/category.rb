class Category < ApplicationRecord
  # Relationship
  has_many :worksheets

  # Validations
  validates :name, presence: true
  validates :name,
            presence: true,
            uniqueness: { case_sensitive: false }
end