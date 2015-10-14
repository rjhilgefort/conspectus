# https://github.com/Shopify/liquid/pull/267

module Jekyll
    module AppendPercentFilter
        def append_percent(input)
            if !input.is_a? String
                input = input.to_s
            end
            if !input.end_with? "%"
                input = "#{input}%"
            end
            input
        end
    end
end

Liquid::Template.register_filter(Jekyll::AppendPercentFilter)
