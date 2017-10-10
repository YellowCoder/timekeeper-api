module V1
  module Types
    UserType = GraphQL::ObjectType.define do
      name 'UserType'
      description 'User type'

      field :id, !types.ID
      field :email, !types.String
      field :timezone, !types.String
      field :password, types.String
      field :created_at, !types.String
      field :updated_at, !types.String
    end
  end
end
