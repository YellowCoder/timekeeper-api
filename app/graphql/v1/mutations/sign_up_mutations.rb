module V1
  module Mutations
    module SignUpMutations
      Create = GraphQL::Relay::Mutation.define do
        name 'Sign up '
        description 'Sign up'

        input_field :sso_provider, types.String
        input_field :sso_token, types.String

        return_field :user, UserType

        resolve lambda { |inputs, ctx|
          { user: {} }
        }
      end
    end
  end
end