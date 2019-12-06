# StudioGhibliCli

This gem is a CLI project and simple demonstration of OOP utilizing either an API or Scraper to pull information from the internet for use in my program. This particular gem is intended to list off all Studio Ghibli films and provide you with the option to view further details about that film. My code is written in an abstract manner so that if Studio Ghibli were to make more films or if the site I pulled information from is updated my program won't break.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'studio_ghibli_cli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install studio_ghibli_cli

## Usage

You can access the program by cloning the repo, opening in an editor and then moving into the main directory:

$ cd studio_ghibli_cli

Once you are in the correct directory for the program you'll want to do a bundle install to make sure all of the programs dependencies are up and running so that you are able to run the program:

$ bundle install

Once your bundle install is complete and while you are in the studio_ghibli_cli directory type the following into your terminal to run the program:

$ ./bin/ghibli-run

You will be greeted, and given a numbered list of all Studio Ghibli films followed by the following options:

"Input a number from the list of films to view it's details."

"Type 'list' to view the full list again."

"Or, if you'd like to exit, type 'exit'"


From this point you can find out some main details about any of these films or if you are finished you can exit the program. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/AlexJMartinez/studio_ghibli_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the StudioGhibliCli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'distributed-delimiter-4097'/studio_ghibli_cli/blob/master/CODE_OF_CONDUCT.md).
