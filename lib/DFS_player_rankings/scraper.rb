class DFSPlayerRankings::Scraper
  def get_page
    Nokogiri::HTML(URI.open('https://rotogrinders.com/rankings'))
  end

  def scrape_players_index
    get_page.xpath('/html/body/section/div[1]/div[2]/table/tbody/tr')
  end

  def make_players
    scrape_players_index.each do |r|
      DFSPlayerRankings::Player.new(r.xpath('td[1]').text,
                                    r.xpath('td[3]/a').text.strip,
                                    r.xpath('td[5]').text.strip)
    end
  end
end
