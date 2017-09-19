class DFSPlayerRankings::Player


  attr_accessor :name, :rank, :totalpoints

  @@all = []

  def self.new_from_index_page(r)
    self.new(
      r.css("td.player a").text,
      r.css("td.rank").text.strip,
      r.css("td.points").text.strip
      )
  end

  def initialize(name=nil, rank=nil, totalpoints=nil)
    @name = name
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
