class DFSPlayerRankings::Scraper

  def get_page
    Nokogiri::HTML(open("https://rotogrinders.com/rankings"))
  end

  def scrape_players_index
    self.get_page.css("tbody tr")
  end

  def make_players
    scrape_players_index.each do |r|
      DFSPlayerRankings::Player.new_from_index_page(r)
    end
  end

end
