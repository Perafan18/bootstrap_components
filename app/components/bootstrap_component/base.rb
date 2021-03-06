# frozen_string_literal: true

module BootstrapComponent
  class Base < ViewComponent::Base
    def initialize(**attributes)
      @attributes = attributes
    end

    def attrs
      @attributes.map do |attribute, value|
        "#{attribute}='#{value}'"
      end.join(' ').html_safe
    end
  end
end
