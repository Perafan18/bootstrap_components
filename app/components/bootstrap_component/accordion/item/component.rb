# frozen_string_literal: true

module BootstrapComponent
  module Accordion
    module Item
      class Component < BootstrapComponent::Base
        with_content_areas :header, :body

        def initialize(target_id:, parent_id: nil, expanded: false)
          @target_id = target_id
          @parent_id = parent_id
          @expanded = expanded
        end

        def header_id
          "header#{@target_id.capitalize}"
        end

        def expanded
          @expanded ? 'true' : 'false'
        end

        def show
          @expanded ? 'show' : ''
        end

        def collapsed
          @expanded ? '' : 'collapsed'
        end
      end
    end
  end
end
