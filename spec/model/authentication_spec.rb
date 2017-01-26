require 'rails_helper'

Rspec.describe Authentication, type: :model do
  context 'validations' do
    subject { build(:authentication) }
    it { should validate_presence_of(:uid) }
    it { should validate_presence_of(:provider) }
    it do
      should validate_inclusion_of(:provider)
        .in_array(%w(twitter facebook slack google))
   end
  end

  context 'attributes' do
    it { should have_db_column(:uid).of_type(:string).with_options(null: false) }
    it { should have_db_column(:provider).of_type(:string).with_options(null: false) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  context 'relationships' do
    it { should belong_to(:user) }
  end
end