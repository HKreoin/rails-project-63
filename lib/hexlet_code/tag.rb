# frozen_string_literal: true

module HexletCode
  # Class for building HTML tags
  class Tag
    SINGLE_TAGS = %w[br img input].freeze

    def self.build(tag_name, **attributes, &block)
      attributes_str = attributes.map { |key, value| " #{key}=\"#{value}\"" }.join
      if block_given? || !SINGLE_TAGS.include?(tag_name)
        content = block ? block.call : ''
        "<#{tag_name}#{attributes_str}>#{content}</#{tag_name}>"
      else
        "<#{tag_name}#{attributes_str}>"
      end
    end
  end
end
