require "addressable"
require "httparty"
require "nokogiri"

module EZTVWrapper
  class EpisodeHarvester
    include HTTParty

    base_uri "https://eztv.ag/"

    def self.call(show_url)
      @show_url = show_url
      @episodes = []

      raise EZTVWrapper::ParsingError if episode_list_node.nil?
      
      episode_list_node.reverse.each do |episode_node|
        episode_url = episode_node.css("a.epinfo").attribute("href").text
        torrent_url = episode_node.css("a.download_1").attribute("href").text
        magnet_uri = episode_node.css("a.magnet").attribute("href").text

        episode_basename = extract_episode_basename(torrent_url)
        episode_links = { episode_url: episode_url,
                          magnet_uri: magnet_uri,
                          torrent_url: torrent_url 
                        }

        new_episode_hash = { episode_basename: episode_basename, episode_links: episode_links }
        @episodes << new_episode_hash
      end

      @episodes
    end

    private

    def self.episode_list_node
      @episode_list_node ||= Nokogiri::HTML(episode_list_page).css("tr.forum_header_border")
    end

    def self.episode_list_page
      get(@show_url)
    end

    def self.extract_episode_basename(torrent_url)
      Addressable::URI.parse(torrent_url).basename.gsub(/(\.torrent)/, "")
    end
  end
end
