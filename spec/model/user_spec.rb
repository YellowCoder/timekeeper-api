require 'rails_helper'

Rspec.describe User, type: :model do
  context 'validations' do
    subject { build(:user) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).scoped_to(:name).case_insensitive }
    it { should validate_presence_of(:sso_token) }
    it { should validate_presence_of(:sso_provider) }
    it do
      should validate_inclusion_of(:sso_provider)
        .in_array(%w(twitter facebook slack google))
    end
  end

  context 'attributes' do
    it { should have_db_column(:id).of_type(:integer) }
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:email).of_type(:string).with_options(null: false) }
    it { should have_db_column(:sso_token).of_type(:string).with_options(null: false) }
    it { should have_db_column(:sso_provider).of_type(:string).with_options(null: false) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  context 'relationships' do
    it { should have_many(:worksheets).dependent(:destroy) }
  end
end