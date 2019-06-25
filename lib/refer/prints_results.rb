module Refer
  class PrintsResults
    def call(result, options)
      result.tokens.each do |t|
        next if t.hidden?
        line_components = [
          "#{t.file}:#{t.line}:#{t.column}:",
          t.full_name.to_s,
          "(#{t.type_name})",
        ]
        puts line_components.join(options[:delimiter])
      end
    end
  end
end
