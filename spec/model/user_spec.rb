require 'rails_helper'

Rspec.describe User, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end

  context 'attributes' do
    it { should have_db_column(:id) }
    it { should have_db_column(:name) }
    it { should have_db_column(:email) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end

  context 'relationships' do
    it { should have_many(:authorizations) }
  end
end