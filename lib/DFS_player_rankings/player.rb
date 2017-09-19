class DFSPlayerRankings::Player


  attr_accessor :name, :rank, :totalpoints, :url

  @@all = []

  def self.new_from_index_page(r)
    self.new(
      r.css("td.player a").text,
      "https://rotogrinders.com/rankings#{r.css("td.player a").attribute("href").text}",
      r.css("td.rank").text,
      r.css("td.points").text
      )
  end

  def initialize(name=nil, url=nil, rank=nil, totalpoints=nil)
    @name = name
    @url = url
    @rank = rank
    @totalpoints = totalpoints
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end

end
