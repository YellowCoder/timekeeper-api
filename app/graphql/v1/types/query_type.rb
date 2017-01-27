module V1
  module Types
    QueryType = GraphQL::ObjectType.define do
      name 'Query'
      description 'Query'

      field :users do
        type UserType
      end
    end
  end
end