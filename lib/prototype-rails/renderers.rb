require 'action_controller/metal/renderers'

module ActionController
  module Renderers
    add :update do |proc, options|
      view_context = self.view_context
      generator = ActionView::Helpers::PrototypeHelper::JavaScriptGenerator.new(view_context, &proc)
      self.content_type  = Mime[:js]
      self.response_body = generator.to_s
    end
  end
end