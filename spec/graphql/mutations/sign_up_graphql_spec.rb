require 'rails_helper'

Rspec.describe V1::Mutations::SignUpMutations do
  include_context 'graphql'

  let(:query) do
    %|
      mutation _ {
        sign_up(input: {name: "#{user.name}", uuid: "#{user.uuid}"}) {
          user {
            id
            name
            uuid
            created_at
            updated_at
          }
        }
      }
    |
  end

  context 'Response schema' do
    it { match_response_schema(:user, result[:data][:sign_up][:user]) }
  end
end
