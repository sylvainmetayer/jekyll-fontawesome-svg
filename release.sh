#!/bin/sh

gem install bundler -v 2.0.2
bundle install
rake release
