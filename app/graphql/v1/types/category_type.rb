module V1
  module Types
    CategoryType = GraphQL::ObjectType.define do
      name 'CategoryType'
      description 'Category type'

      field :id, !types.ID
      field :name, !types.String
    end
  end
end
