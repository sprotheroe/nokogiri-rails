require_relative 'template_handler'

module NokogiriRails
  class Railtie < Rails::Railtie
    initializer 'nokogiri_rails.initializer' do
      ActiveSupport.on_load(:action_view) do
        ActionView::Template.register_template_handler :nokogiri, NokogiriRails::TemplateHandler.new
      end

      ActiveSupport.on_load(:action_controller) do
        require_relative 'action_controller'
      end
    end
  end
end
