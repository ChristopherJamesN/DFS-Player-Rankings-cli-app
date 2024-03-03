class DFSPlayerRankings::Scraper
  def get_page
    Nokogiri::HTML(URI.open('https://rotogrinders.com/rankings'))
  end

  def scrape_players_index
    get_page.css('tbody tr')
  end

  def make_players
    scrape_players_index.each do |r|
      DFSPlayerRankings::Player.new(r.css('body > section > div.container.ranking > div:nth-child(3) > table > tbody > tr:nth-child(1) > td.ranking-table-avatar.left > a').text,
                                    r.css('body > section > div.container.ranking > div:nth-child(3) > table > tbody > tr:nth-child(1) > td.gold.min.center.bold').text.strip,
                                    r.css('body > section > div.container.ranking > div:nth-child(3) > table > tbody > tr:nth-child(1) > td:nth-child(5)').text.strip)
    end
  end
end
