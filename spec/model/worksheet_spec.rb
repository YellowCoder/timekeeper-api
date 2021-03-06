require 'rails_helper'

Rspec.describe Worksheet, type: :model do
  context 'validations' do
    subject { build(:worksheet) }
    it { should validate_presence_of(:user) }
  end

  context 'attributes' do
    it { should have_db_column(:action).of_type(:integer).with_options(null: false, default: :start) }
    it { should have_db_column(:description).of_type(:text) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  context 'relationships' do
    it { should belong_to(:user) }
  end

  context 'extensions' do
    it { is_expected.to define_enum_for(:action).with([:start, :stop, :pause]) }
  end
end