require 'rails_helper'

Rspec.describe Category, type: :model do
  context 'validations' do
    subject { build(:category) }
    it { should validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  end

  context 'attributes' do
    it { should have_db_column(:id).of_type(:integer) }
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  context 'relationships' do
    it { should have_many(:worksheets) }
  end
end