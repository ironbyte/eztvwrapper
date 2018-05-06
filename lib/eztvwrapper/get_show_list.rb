require 'httparty'
require 'singleton'
require 'nokogiri'

module EZTVWrapper
  class GetShowList
    include HTTParty
    include Singleton

    base_uri "https://eztv.ag/"

    def self.call
      instance.call
    end

    def call
      @showlist ||= eztv_showlist_node.map { |node| { node.text => node['href'] } }.reduce(:merge)
    end

    private

    def eztv_showlist_node
      Nokogiri::HTML(eztv_showlist_page).css('.thread_link')
    end

    def eztv_showlist_page
      self.class.get("/showlist/")
    end
  end
end
