module EZTVWrapper
  class Episode
    attr_reader :basename, :show, :season, :number, :links

    def initialize(episode_hash)
      @basename = episode_hash.fetch(:episode_basename)
      @links = episode_hash.fetch(:episode_links)

      @show = episode_info.fetch("show_name")
      @season = episode_info.fetch("season_no").to_i
      @number = episode_info.fetch("episode_no").to_i
    end

    private

    def episode_info
      @episode_info ||= EZTVWrapper::REGEX_SCENE_TV.match(@basename).named_captures
    end
  end
end
