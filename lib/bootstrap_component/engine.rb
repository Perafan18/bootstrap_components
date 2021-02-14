module BootstrapComponent
  class Engine < ::Rails::Engine
    isolate_namespace BootstrapComponent
  end
end

require "#{BootstrapComponent::Engine.root}/app/components/bootstrap_component/components.rb"
