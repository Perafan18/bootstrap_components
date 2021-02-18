# frozen_string_literal: true

module BootstrapComponent
  module Accordion
    class Component < BootstrapComponent::Base
      include ViewComponent::SlotableV2

      def initialize(id:, **attributes)
        @id = id
        @attributes = attributes.merge(id: @id)
      end

      renders_many :items, -> (id:, expanded: false) do
        BootstrapComponent::Accordion::Item::Component.new(target_id: id, parent_id: @id, expanded: expanded)
      end
    end
  end
end
