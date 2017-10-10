require 'rails_helper'

Rspec.describe User, type: :model do
  context 'validations' do
    subject { build(:user) }
    it { should validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end

  context 'attributes' do
    it { should have_db_column(:id).of_type(:integer) }
    it { should have_db_column(:email).of_type(:string).with_options(null: false) }
    it { should have_db_column(:password_digest).of_type(:string).with_options(null: false) }
    it { should have_db_column(:timezone).of_type(:string).with_options(default: 'America/Sao_Paulo') }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  context 'relationships' do
    it { should have_many(:worksheets).dependent(:destroy) }
  end
end
