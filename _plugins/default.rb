# @author rjhilgefort
# inspiration came from:
#     https://github.com/Shopify/liquid/pull/267

module Jekyll
    module DefaultFilter
        def default(input, default_value = "[unspecified]")
            is_blank = input.respond_to?(:empty?) ? input.empty? : !input
            is_blank ? default_value : input
        end
    end
end

Liquid::Template.register_filter(Jekyll::DefaultFilter)
