module Solidus
  module GraphQL
    class ProductResolver
      class All
        def self.call(obj, args, ctx)
          # TODO: query(args)
          Spree::Product.available
        end
      end


      class ByVariant
        def self.call(variant, args, ctx)
          Spree::Product.find(variant.product_id, ctx[:token])
        end
      end

      class Variants
        def self.call(product, args, ctx)
          # TODO: query(args)
          product.variants.to_a
        end
      end


      class OptionTypes
        def self.call(product, args, ctx)
          product.option_types
        end
      end



      #
      # class OptionValues
      #   def self.call(product,args, tx)
      #     product.variant_option_values_by_option_type
      #   end
      # end

      class ByTaxon
        def self.call(taxon, args, ctx)
          # TODO: query(args)
          taxon.products.not_deleted.available.to_a
        end
      end
    end
  end
end
