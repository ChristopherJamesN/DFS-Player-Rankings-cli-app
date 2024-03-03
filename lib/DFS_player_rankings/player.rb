class DFSPlayerRankings::Player
  attr_accessor :name, :rank, :totalpoints

  @@all = []

  def initialize(name = nil, rank = nil, totalpoints = nil)
    @name = name
    @rank = rank
    @totalpoints = totalpoints
    @@all << self
  end

  def self.avg_points
    combinedpoints = 0
    all.each do |player|
      combinedpoints += player.totalpoints.gsub(',', '').to_i
    end
    return 0 if all.count.zero?

    combinedpoints / all.count
  end

  def self.all
    @@all
  end

  def self.find(id)
    all[id - 1]
  end

  def doc
    @doc ||= Nokogiri::HTML(open(url))
  end

  # V2 addition to dive into more player details
end
