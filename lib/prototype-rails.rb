require 'rails'
require 'active_support'

module PrototypeRails
  class Engine < Rails::Engine
    initializer 'prototype-rails.initialize' do
      ActiveSupport.on_load(:action_controller) do
        require 'prototype-rails/on_load_action_controller'
      end

      ActiveSupport.on_load(:action_view) do
        require 'prototype-rails/on_load_action_view'
        if Rails.env.test?
          ActionView::TestCase.class_eval do
            include ActionView::Helpers::PrototypeHelper
            include ActionView::Helpers::ScriptaculousHelper
          end
        end
      end
    end
  end
end

