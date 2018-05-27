require "httparty"
require "nokogiri"

module EZTVWrapper
  class EpisodeFactory
    include HTTParty

    base_uri "https://eztv.ag/"

    def self.call(show_url)
      @show_url = show_url
      @episodes = []

      episode_list_node.reverse.each do |episode_node|
        original_ep_name = episode_node.css("a.epinfo").text
        episode_url = episode_node.css("a.epinfo").attribute("href").text
        magnet_uri = episode_node.css("a.magnet").attribute("href").text
        torrent_url = episode_node.css("a.download_1").attribute("href").text
        links = { :episode_url => episode_url, :magnet_uri => magnet_uri, :torrent_url => torrent_url }
        new_ep = Episode.new(original_ep_name, links)
        @episodes << new_ep
      end

      @episodes
    end

    private

    def self.episode_list_node
      Nokogiri::HTML(episode_list_page).css("tr.forum_header_border")
    end

    def self.episode_list_page
      get(@show_url)
    end
  end
end
