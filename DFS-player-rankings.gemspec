require_relative './lib/DFS_player_rankings/version'

Gem::Specification.new do |s|
  s.name        = 'DFS-player-rankings'
  s.version     = DFSPlayerRankings::VERSION
  s.date        = '2017-09-19'
  s.summary     = "Top ranked DFS players in the world"
  s.description = "Provides details on the top DFS players in the world"
  s.authors     = ["Chris Nady"]
  s.email       = 'nady.christopher@gmail.com'
  s.files       = ["lib/DFS_player_rankings.rb", "lib/DFS_player_rankings/cli.rb", "lib/DFS_player_rankings/scraper.rb", "lib/DFS_player_rankings/player.rb", "config/environment.rb"]
  s.homepage    = 'http://rubygems.org/gems/DFS-player-rankings'
  s.license     = 'MIT'
  s.executables << 'DFS-player-rankings'

  s.add_development_dependency "bundler",  ">= 2.3.25"
  s.add_development_dependency "rake", "~> 12.3"
  s.add_development_dependency "rspec", ">= 0"
  s.add_development_dependency "nokogiri", ">= 0"
  s.add_development_dependency "pry", ">= 0"
end
