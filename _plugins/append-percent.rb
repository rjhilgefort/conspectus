module Jekyll
    module AppendPercentFilter
        def append_percent(input)
            if !input.respond_to?(:to_s)
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
