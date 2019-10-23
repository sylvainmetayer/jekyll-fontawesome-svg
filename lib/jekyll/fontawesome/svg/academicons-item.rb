require 'jekyll/fontawesome/svg/academicons-icon'

module Jekyll
  module FontAwesome
    module Svg
      class AcademiconsItemGenerator < Liquid::Tag
        def initialize(tag_name, faIcon, tokens)
          super
          @icon = AcademiconsIcon.new(faIcon.strip)
        end

        def render(context)
          unless context.environments.first['page']['academicons_svg'].is_a?([]::class)
            context.environments.first['page']['academicons_svg'] = []
          end
          context.environments.first['page']['academicons_svg'].push(@icon.value)
          "<svg class=\"academic-icon\"><use xlink:href='##{@icon.value}'></use></svg>"
        end
      end
    end
  end
end