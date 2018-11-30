# Jekyll::Fontawesome::Svg

[![Gem Version](https://badge.fury.io/rb/jekyll-fontawesome-svg.svg)](https://badge.fury.io/rb/jekyll-fontawesome-svg)
[![Depfu](https://badges.depfu.com/badges/8854fd930f182d7c719d31bc443abd5e/overview.svg)](https://depfu.com/github/sylvainmetayer/sylvainmetayer?project_id=6389)
[![Build Status](https://travis-ci.org/sylvainmetayer/jekyll-fontawesome-svg.svg?branch=master)](https://travis-ci.org/sylvainmetayer/jekyll-fontawesome-svg)

Use all of [FontAwesome Icons](http://fontawesome.com/) without the need to import the full css / svg.

This Jekyll plugin will look for the icon you include in your page and only include the icons you used.

## Usage

- When you want to include an icon, you can use the same name as you will do to with FontAwesome

    `{% fa_svg fab.fa-twitter %}`

    Use the `fa_svg` liquid tag, with the type of the icon you want to use (`fab`, `fas` or `far`), a dot (**important**) and the icon name. 

    Each icon get the `icon` class, which you can use in your CSS to customize the appearance of your icon.

- You will need to have in **one** part of your project (at the end of your layout for example) liquid tag to generate the SVG definition.

    The syntax is this one `{% fa_svg_generate %}` 

### Examples

You can find an example on [my personnal site repository](https://github.com/sylvainmetayer/sylvainmetayer).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-fontawesome-svg'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-fontawesome-svg

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sylvainmetayer/jekyll-fontawesome-svg. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Jekyll::Fontawesome::Svg project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/sylvainmetayer/jekyll-fontawesome-svg/blob/master/CODE_OF_CONDUCT.md).

## Changelog

### v0.1.0

Initial release

### v0.1.1

Bug fix: on a page with multiple icon that are the same, their was duplicate declarations.
