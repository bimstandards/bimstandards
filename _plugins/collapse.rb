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
        "<div class=\"collapse-group\"><div class=\"btn-group\" data-toggle=\"button\"><a class=\"btn btn-info-outline btn-sm dropdown-toggle\" data-toggle=\"collapse\" href=\"#collapse#{@random}\" aria-expanded=\"false\" aria-controls=\"collapse#{@random}\">#{@type}</a></div></div><div class=\"collapse\" id=\"collapse#{@random}\"><div class=\"card card-block\">#{output}</div></div>"
      end
    end
  end
end

Liquid::Template.register_tag('collapse', Jekyll::Tags::CollapseTag)