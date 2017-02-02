module V1
  module Types
    UserType = GraphQL::ObjectType.define do
      name 'User type'
      description 'User type'

      field :id, !types.ID
      field :name, !types.String
      field :uuid, !types.String
      field :created_at, !types.String
      field :updated_at, !types.String
    end
  end
end
