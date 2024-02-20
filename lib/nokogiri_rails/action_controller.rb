# frozen_string_literal: true

require 'action_controller'

ActionController::Renderers.add :nxml do |filename, options|
  #
  # You can always specify a template:
  #
  #  def called_action
  #    render xlsx: 'filename', template: 'controller/diff_action'
  #  end
  # 
  # And the normal use case works:
  #
  #  def called_action
  #    render 'diff_action'
  #    # or
  #    render 'controller/diff_action'
  #  end
  #
  options[:template] = filename.gsub(/^.*\//,'') if options[:template] == action_name

  # force layout false
  options[:layout] = false

  # disposition / filename
  disposition = options.delete(:disposition) || 'attachment'
  file_name = options.delete(:filename) || "#{filename.gsub(/^.*\//,'')}.xml"
  file_name = "#{file_name}.xml" unless file_name =~ /\.xml$/

  # alternate settings
  options[:locals] ||= {}
##  options[:locals][:xlsx_author] ||= options.delete(:xlsx_author)
##  options[:locals][:xlsx_created_at] ||= options.delete(:xlsx_created_at)
##  unless options[:locals][:xlsx_use_shared_strings]
##    options[:locals][:xlsx_use_shared_strings] = options.delete(:xlsx_use_shared_strings)
##  end

  mime = Rails.version.to_f >= 5 ? Mime[:xml] : Mime::XML
  send_data render_to_string(options), filename: file_name, type: mime, disposition: disposition
end

# For respond_to default
begin
  ActionController::Responder
rescue
else
  class ActionController::Responder
    def to_nxml
      @_action_has_layout = false
      if @default_response
        @default_response.call(options)
      else
        controller.render({nxml: controller.action_name}.merge(options))
      end
    end
  end
end
