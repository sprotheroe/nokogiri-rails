# frozen_string_literal: true

module NokogiriRails
  class TemplateHandler
    def default_format
      case
      when Rails.version.to_f >= 6
        Mime[:xml].symbol
      when Rails.version.to_f >= 5
        Mime[:xml]
      else
        Mime::XML
      end
    end

    def call(template, source = nil)
      # the double assignment is to silence "assigned but unused variable" warnings
      "_doc = Nokogiri::XML('<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>'); " \
      "builder = builder = Nokogiri::XML::Builder.with(_doc) do |xml| " \
      "#{source}; " \
      "end; builder.to_xml(indent: 0)"
    end
  end
end



# frozen_string_literal: true

#module ActionView
#  module Template::Handlers
#    class Builder
#      class_attribute :default_format, default: :xml
#
#   end
#  end
#end
