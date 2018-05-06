require "httparty"
require "nokogiri"
require "pry"

module EZTVWrapper
  class Show
    include HTTParty

    attr_reader :show_name, :show_url

    base_uri "https://eztv.ag/"

    def initialize(show_name)
      @show_name = show_name
      @show_url = find_the_show_url(show_name)
      raise EZTVWrapper::ShowNotFound if @show_url.nil?
    end

    def episodes
    end

    def episode(season_no, episode_no)
    end

    def seasons
    end

    def season(season_no)
    end

    private

    # Find the URL of the EZTV Show
    def find_the_show_url(show_name)
      showlist = GetShowList.call
      @show_url = showlist[show_name]
    end
  end
end
