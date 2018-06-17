RSpec.describe EZTVWrapper::GetShowList do
  before { Singleton.__init__(EZTVWrapper::GetShowList) }

  subject(:show_list) { EZTVWrapper::GetShowList.call }
  let(:some_tv_shows) { ["Expanse, The", "Game of Thrones", "Gotham", "Mr. Robot", "Stranger Things" ] }

  describe ".call" do
    it "downloads EZTV ShowList page" do
      EZTVWrapper::GetShowList.call
      expect(a_request(:get, "https://eztv.ag/showlist/")).to have_been_made
    end

    it "memoizes EZTV ShowList page" do
      2.times { EZTVWrapper::GetShowList.call }
      expect(a_request(:get, "https://eztv.ag/showlist/")).to have_been_made.once
    end

    it "returns an exhaustive list of parsed shows" do
      expect(show_list).to include(*some_tv_shows)
    end
  end
end
