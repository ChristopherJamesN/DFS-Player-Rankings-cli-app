# DFS Player Rankings

This Ruby Gem provides a CLI to view the top DFS players via Rotogrinders.com

## Installation

```shell
gem install DFS-player-rankings
```

## Usage

Type the below and follow the on screen prompts.

```shell
DFS-player-rankings
```

## Development

After checking out the repo, run `bin/setup` (you might have to run `chmod +x bin/setup` first) to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` (you might have to run `chmod +x bin/console` first) for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install` . To release a new version, update the version number in `lib/DFS_player_rankings/version.rb` , and then run `bundle exec rake release` , which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

One flow I've used when developing locally is:

* Make some change
* Bump the version number in `lib/DFS_player_rankings/version.rb`
* Run `bundle exec rake install`
* And then run `DFS-player-rankings` to test out the changes

Alternatively, you can uninstall the gem with `gem uninstall DFS-player-rankings` and then re-install with some changes made locally using `bundle exec rake install` .

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ChristopherJamesN/DFS-Player-Rankings-cli-app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
