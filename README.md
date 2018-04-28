# EZTVWrapper

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/eztvwrapper`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

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

## Code of Conduct

Everyone interacting in the Eztvwrapper project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/eztvwrapper/blob/master/CODE_OF_CONDUCT.md).
