require 'jekyll/fontawesome/svg/fa-icon'

module Jekyll
  module FontAwesome
    module Svg
      class FontAwesomeSvgItemGenerator < Liquid::Tag
        def initialize(tag_name, faIcon, tokens)
          super
          @icon = FontAwesomeIcon.new(faIcon.strip)
        end

        def render(context)
          unless context.environments.first['page']['fa_svg'].is_a?([]::class)
            context.environments.first['page']['fa_svg'] = []
          end
          context.environments.first['page']['fa_svg'].push(@icon.value)
          "<svg class=\"icon\"><use xlink:href='##{@icon.value}'></use></svg>"
        end
      end
    end
  end
end