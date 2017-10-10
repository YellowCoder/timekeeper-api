module V1
  module Types
    WorksheetType = GraphQL::ObjectType.define do
      name 'WorksheetType'
      description 'Worksheet type'

      field :id, !types.ID
      field :action, !types.String
      field :description, types.String
      field :created_at, !types.String
      field :updated_at, !types.String
      field :category, V1::Types::CategoryType
      field :user, V1::Types::UserType
    end
  end
end