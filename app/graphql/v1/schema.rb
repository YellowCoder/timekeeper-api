module V1
  Schema = GraphQL::Schema.define do
    query V1::Types::QueryType
    mutation V1::Types::MutationType
    max_depth 8
  end
end