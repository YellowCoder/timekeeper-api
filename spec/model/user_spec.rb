require 'rails_helper'

Rspec.describe User, type: :model do
  context 'validations' do
    subject { build(:user) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:uuid) }
    it { should validate_presence_of(:provider) }
    it { is_expected.to validate_uniqueness_of(:uuid).scoped_to(:provider).case_insensitive }
  end

  context 'attributes' do
    it { should have_db_column(:id).of_type(:integer) }
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:uuid).of_type(:string).with_options(null: false) }
    it { should have_db_column(:provider).of_type(:string).with_options(null: false) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  context 'relationships' do
    it { should have_many(:worksheets).dependent(:destroy) }
  end
end
