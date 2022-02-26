class DFSPlayerRankings::Scraper

  def get_page
    Nokogiri::HTML(URI.open("https://rotogrinders.com/rankings"))
  end

  def scrape_players_index
    self.get_page.css("tbody tr")
  end

  def make_players
    scrape_players_index.each do |r|
      DFSPlayerRankings::Player.new(r.css("td.player a").text,
      r.css("td.rank").text.strip,
      r.css("td.points").text.strip)
    end
  end

end
