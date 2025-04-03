module HexletCode
  class Tag
    SINGLE_TAGS = %w[br img input].freeze

    class << self
      def build(tag_name, **attributes, &block)
        attributes_str = build_attributes(attributes)
        if block_given? || !SINGLE_TAGS.include?(tag_name)
          content = block ? block.call : ''
          "<#{tag_name}#{attributes_str}>#{content}</#{tag_name}>"
        else
          "<#{tag_name}#{attributes_str}>"
        end
      end

      private

      def build_attributes(attributes)
        return '' if attributes.empty?

        attributes.map { |key, value| " #{key}=\"#{value}\"" }.join
      end
    end
  end
end 