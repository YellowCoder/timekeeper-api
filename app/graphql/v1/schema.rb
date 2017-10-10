module V1
  Schema = GraphQL::Schema.define do
    mutation(V1::Types::MutationType)
    query(V1::Types::QueryType)

    resolve_type ->(_type, _obj, _ctx) {}
  end
end