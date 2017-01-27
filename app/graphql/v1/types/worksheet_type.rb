module V1
  module Types
    WorksheetType = GraphQL::ObjectType.define do
      name 'User type'
      description 'User type'

      field :id, !types.ID
      field :type, !types.String
      field :description, types.String
      field :created_at, !types.String
      field :updated_at, !types.String
    end
  end
end