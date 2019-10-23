module Jekyll
    module FontAwesome
      module Svg
        class AcademiconsIcon
          def initialize(icon)
            @icon = icon
          end

          # absolute path to file
          def to_filename
            base_directory = __dir__ + "/assets/"
            base_directory + "academicons.svg"
          end
  
          def to_svg_html
            file = File.read(to_filename)
            re = /<glyph.*glyph-name="#{@icon}" data-tags=".+ d="(.*)"/
            svg_html = file.scan(re)
            "<symbol id='#{@icon}' viewBox='0 0 1024 1024'>
              <title>#{@icon}</title>
              <path class='path1' d='#{svg_html[0][0]}'></path>
          </symbol>
          "
          end
  
          def value
            @icon
          end
  
        end
  
      end
    end
  end
  