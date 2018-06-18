module EZTVWrapper
  class Episode
    attr_reader :basename, :show, :season, :number, :episode_url, :torrent_url, :magnet_uri

    def initialize(episode_hash)
      @basename = episode_hash.fetch(:episode_basename)
      @show = episode_info.fetch("show_name")
      @season = episode_info.fetch("season_no").to_i
      @number = episode_info.fetch("episode_no").to_i
      @episode_url = episode_hash.fetch(:episode_links).fetch(:episode_url)
      @torrent_url = episode_hash.fetch(:episode_links).fetch(:torrent_url)
      @magnet_uri = episode_hash.fetch(:episode_links).fetch(:magnet_uri)
    end

    private

    def episode_info
      @episode_info ||= EZTVWrapper::REGEX_SCENE_TV.match(@basename).named_captures
    end
  end
end
