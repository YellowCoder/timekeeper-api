require 'rails_helper'

Rspec.describe V1::Mutations::SignUp do
  include_context 'graphql'

  let(:user) { build(:user) }
  let(:query) do
    %|
      mutation _ {
        sign_up(input: {sso_provider: "#{user.sso_provider}", sso_token: "#{user.sso_token}"}) {
          user {
            id
            name
            email
          }
        }
      }
    |
  end

  context 'Response schema' do
    it { match_response_schema(:user, result[:data][:sign_up][:user]) }
  end
end