# frozen_string_literal: true

require_relative 'hexlet_code/version'
require_relative 'hexlet_code/tag'

# Main module for form generation
module HexletCode
  class Error < StandardError; end

  def self.form_for(_entity, url: '#')
    form = Tag.build('form', action: url, method: 'post')
    yield if block_given?
    form
  end
end
