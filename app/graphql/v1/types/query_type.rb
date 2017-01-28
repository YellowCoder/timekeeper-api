module V1
  module Types
    QueryType = GraphQL::ObjectType.define do
      name 'Query'
      description 'Query'

      field :current_user do
        type UserType
        resolve lambda { |_obj, _args, ctx|
          ctx[:current_user]
        }
      end

      field :worksheets do
        type types[WorksheetType]
        resolve lambda { |_obj, _args, ctx|
          ctx[:current_user].worksheets
        }
      end
    end
  end
end