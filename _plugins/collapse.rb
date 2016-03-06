# Source: https://stackoverflow.com/questions/19169849/how-to-get-markdown-processed-content-in-jekyll-tag-plugin

module Jekyll
  module Tags
    class CollapseTag < Liquid::Block

      def initialize(tag_name, type, tokens)
        super
        type.strip!
        @type = type
        @random = SecureRandom.hex(6)
      end

      def render(context)
        site = context.registers[:site]
        converter = site.find_converter_instance(::Jekyll::Converters::Markdown)
        output = converter.convert(super(context))
        "<div class=\"card\"><div class=\"card-header dropdown-toggle\" data-toggle=\"collapse\" data-target=\"#collapse#{@random}\" aria-expanded=\"false\" aria-controls=\"collapse#{@random}\"><i class=\"fa fa-info-circle\"></i> #{@type}</div><div class=\"card-block collapse\" id=\"collapse#{@random}\"><p class=\"card-text\">#{output}</p></div></div>"
      end
    end
  end
end

Liquid::Template.register_tag('collapse', Jekyll::Tags::CollapseTag)