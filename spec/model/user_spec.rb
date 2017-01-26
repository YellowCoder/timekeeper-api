require 'rails_helper'

Rspec.describe User, type: :model do
  context 'validations' do
    subject { build(:user) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).scoped_to(:name).case_insensitive }
  end

  context 'attributes' do
    it { should have_db_column(:id).of_type(:integer) }
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:email).of_type(:string).with_options(null: false) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  context 'relationships' do
    it { should have_many(:authentications).dependent(:destroy) }
  end
end