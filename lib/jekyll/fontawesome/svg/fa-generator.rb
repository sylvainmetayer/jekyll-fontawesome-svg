require 'jekyll/fontawesome/svg/fa-icon'

module Jekyll
  module FontAwesome
    module Svg
      class FontAwesomeSvgGenerator < Liquid::Tag

        def render(context)
          output = nil
          unless context.environments.first['page']['fa_svg'].nil?
            output = '<svg display="none" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                  <defs>
                  <!--
                  Font Awesome Free 5.5.0 by @fontawesome - https://fontawesome.com
                  License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License)
                  -->
              '

            context.environments.first['page']['fa_svg'].uniq.each do |icon|
              fa_icon = FontAwesomeIcon.new(icon)
              output += fa_icon.to_svg_html
            end

            output += '</defs>
              </svg>'
          end

          unless output.nil?
            output
          end
        end
      end
    end
  end
end