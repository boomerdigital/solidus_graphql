module Solidus
  module GraphQL
    QueryType = ::GraphQL::ObjectType.define do
      name "Query"
      description "The query root of the schema"

      field :products,   ProductsField
      field :taxons,     TaxonsField
      field :taxonomies, TaxonomiesField
      field :option_types, OptionTypeField
    end
  end
end
