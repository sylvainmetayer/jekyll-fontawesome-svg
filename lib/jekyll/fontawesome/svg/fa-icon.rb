module Jekyll
  module FontAwesome
    module Svg
      class FontAwesomeIcon
        def initialize(icon)
          @icon = icon
        end

        def mapper(type)
          {
              "fas" => "solid",
              "fab" => "brands",
              "far" => "regular"
          }[type]
        end

        # fa-dev
        def to_icon_name
          icon = @icon.split('.').last.split('-')
          icon.shift
          icon.join('-')
        end

        # solid / brands / regular
        def to_folder_name
          mapper(to_font_awesome_type)
        end

        # fab / far / fas
        def to_font_awesome_type
          @icon.split('.').first.strip
        end

        # absolute path to file
        def to_filename
          base_directory = __dir__ + "/assets/fa_svgs/"
          base_directory + to_folder_name + "/" + to_icon_name + ".svg"
        end

        def to_svg_html
          file = File.read(to_filename)
          svg_html = /^.*path d="(.*)" ?\/>.*$/.match(file).captures.first
          "<symbol id='#{@icon}' viewBox='0 0 1024 1024'>
            <title>#{to_icon_name}</title>
            <path class='path1' d='#{svg_html}'></path>
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
