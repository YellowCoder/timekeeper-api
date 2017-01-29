require 'rails_helper'

Rspec.describe V1::Mutations::SignUpMutations do
  include_context 'graphql'

  let(:query) do
    %|
      mutation _ {
        sign_up(input: {sso_provider: "#{user.sso_provider}", sso_token: "#{user.sso_token}"}) {
          user {
            id
            name
            email
            avatar_source
            sso_token
            sso_provider
            created_at
            updated_at
          }
        }
      }
    |
  end

  context 'Response schema' do
    it {
      p result
      match_response_schema(:user, result[:data][:sign_up][:user]) }
  end
end