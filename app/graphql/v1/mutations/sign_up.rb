module V1
  module Mutations
    module SignUp
      Create = GraphQL::Relay::Mutation.define do
        name 'Sign up '
        description 'Sign up'

        input_field :sso_provider, types.String
        input_field :sso_token, types.String

        return_field :user, V1::Types::UserType

        resolve lambda { |inputs, ctx|
          { user: ctx[:current_user] }
        }
      end
    end
  end
end