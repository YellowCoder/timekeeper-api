module V1
  module Mutations
    module SignUpMutations
      Create = GraphQL::Relay::Mutation.define do
        name 'SignUp '
        description 'Sign up'

        input_field :email, types.String
        input_field :password, types.String

        return_field :user, V1::Types::UserType

        resolve lambda { |_object, inputs, ctx|
          user = User.where(email: inputs[:email]).first_or_initialize do |user|
            user.password = inputs[:password]
          end
          user.save if user.new_record?

          { user: user }
        }
      end
    end
  end
end
