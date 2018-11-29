require 'liquid'
require "jekyll/fontawesome/svg/version"
require "jekyll/fontawesome/svg/fa-icon"
require 'jekyll/fontawesome/svg/fa-item'
require 'jekyll/fontawesome/svg/fa-generator'

module Jekyll
  module FontAwesome
    module Svg
    end
  end
end

Liquid::Template.register_tag('fa_svg', Jekyll::FontAwesome::Svg::FontAwesomeSvgItemGenerator)
Liquid::Template.register_tag('fa_svg_generate', Jekyll::FontAwesome::Svg::FontAwesomeSvgGenerator)