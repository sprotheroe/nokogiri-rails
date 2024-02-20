# NokogiriRails

A simple gem to enable rails templates to be written to use the Nokogiri XML builder, in place of the usual Builder gem. Builder should still be your first choice but if you need Nokogiri's features, this may be useful. The use case which motivated the gem is writing Office OpenXML (ECMA-376) documents, which make heavy use of namespaces throughout, as Nokogiri handles writing documents using namespaces a little more easily than Builder. 

It's a bit of a Frankengem, based mostly on caxlsx_rails and builder.

This is absoltely NOT ready for public use or even development yet! It's in a public repository only to facilitate some internal testing with public CI/CD systems. It has not been and should not be pushed to rubygems yet.

Once again, to be completely clear: *DO NOT USE THIS! IT DOESN'T WORK PROPERLY YET, HAS NO TEST COVERAGE, IS INSECURE AND WILL PROBABLY WREAK UNTOLD HAVOC ON YOUR PROJECT.*

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/nokogiri_rails`. To experiment with that code, run `bin/console` for an interactive prompt.



## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

    $ bundle add UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/nokogiri_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/nokogiri_rails/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NokogiriRails project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/nokogiri_rails/blob/master/CODE_OF_CONDUCT.md).
