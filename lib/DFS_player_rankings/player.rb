class DFSPlayerRankings::Player


  attr_accessor :name, :rank, :totalpoints

  @@all = []

  def initialize(name=nil, rank=nil, totalpoints=nil)
    @name = name
    @rank = rank
    @totalpoints = totalpoints
    @@all << self
  end

  def self.avg_points
    combinedpoints = 0
    self.all.each do |player|
      combinedpoints += player.totalpoints.gsub(',','').to_i
    end
    combinedpoints/(self.all.count)
  end
  #Add more methods to grab and manipulate data for individual players.
  #Does rotogrinder have an API that can output player rankings data?
  #Google autcompletion in terminal - should be able to tab to autocomplete.

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end

  #V2 addition to dive into more player details

end
