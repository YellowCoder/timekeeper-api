module V1
  module Mutations
    module SignUpMutations
      Create = GraphQL::Relay::Mutation.define do
        name 'Sign up '
        description 'Sign up'

        input_field :name, types.String
        input_field :uuid, types.String

        return_field :user, V1::Types::UserType

        resolve ->(object, inputs, ctx) {
          user = User.where(name: inputs[:name], uuid: inputs[:uuid]).first_or_create
          { user: user }
        }
      end
    end
  end
end
