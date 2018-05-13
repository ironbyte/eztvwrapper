# EZTVWrapper

[![Build Status](https://travis-ci.org/ironbyte/eztvwrapper.svg?branch=master)](https://travis-ci.org/ironbyte/eztvwrapper)[![Coverage Status](https://coveralls.io/repos/github/ironbyte/eztvwrapper/badge.svg?branch=master)](https://coveralls.io/github/ironbyte/eztvwrapper?branch=master)

Simple Ruby wrapper for EZTV that enables you to search for shows and to pull up show data in a structured format.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eztvwrapper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eztvwrapper

## Usage

```ruby
require 'eztvwrapper'

lost = EZTVWrapper::Show('Lost')

# Return torrent links of all the available episodes of Lost
lost.episodes.each do |episode| do
  puts episode.torrent_link
end

# Return raw filenames of all episode versions of LOST S03E01
lost.episode(3, 1).ep_links.each do |ep_link|
  ep_link.raw_filename
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
