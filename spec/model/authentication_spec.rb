require 'rails_helper'

Rspec.describe Authentication, type: :model do
  context 'validations' do
    it { should validate_presence_of(:uid) }
    it { should validate_presence_of(:provider) }
    it do
      should validate_inclusion_of(:provider)
        .in_array(%(twitter facebook slack google))
   end
  end

  context 'attributes' do
    it { should have_db_column(:uid) }
    it { should have_db_column(:provider) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end

  context 'relationships' do
    it { should belong_to(:user) }
  end
end