module EZTVWrapper
  class Episode
    attr_reader :original_episode_name, :links

    def initialize(original_episode_name, links)
      @original_episode_name = original_episode_name
      @links = links
    end
  end
end
