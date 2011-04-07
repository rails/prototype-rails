ActiveSupport.on_load(:action_controller) do
  ActiveSupport.on_load(:action_view) do
    require 'action_view/helpers/prototype_helper'
    require 'action_view/helpers/scriptaculous_helper'
    require 'action_view/template/handlers/rjs'

    require 'rjs/selector_assertions'
    require 'rjs/renderers'
    require 'rjs/javascript_helper'
    require 'rjs/rendering'

    ActionView::Base.class_eval do
      cattr_accessor :debug_rjs
      @@debug_rjs = false
    end

    ActionView::Base.class_eval do
      include ActionView::Helpers::PrototypeHelper
      include ActionView::Helpers::ScriptaculousHelper
    end

    ActionView::Template.register_template_handler :rjs, ActionView::Template::Handlers::RJS.new
  end
end
