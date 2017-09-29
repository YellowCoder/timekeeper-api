module V1
  module Mutations
    module SignUpMutations
      Create = GraphQL::Relay::Mutation.define do
        name 'SignUp '
        description 'Sign up'

        input_field :email, types.String
        input_field :password, types.String

        return_field :user, V1::Types::UserType

        resolve lambda { |inputs, _ctx|
          user = User.where(
                   email: inputs[:email],
                   password: inputs[:password]
                 ).first_or_create
          { user: user }
        }
      end
    end
  end
end
