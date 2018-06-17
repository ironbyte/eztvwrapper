RSpec.describe EZTVWrapper::Episode do
  subject { described_class }
  let(:episode_hash) {
    {
      episode_basename: "Mr.Robot.S02E06.PROPER.720p.HDTV.x264-KILLERS[eztv].mkv",
      episode_links: {
               episode_url: "/ep/153624/mr-robot-s02e06-proper-720p-hdtv-x264-killers/",
               torrent_url: "https://zoink.ch/torrent/Mr.Robot.S02E06.PROPER.720p.HDTV.x264-KILLERS[eztv].mkv.torrent",
               magnet_uri: "magnet:?xt=urn:btih:4de55d9171f25362860ed72b0e9c678b087dcaae&dn=Mr.Robot.S02E06.PROPER.720p.HDTV.x264-KILLERS%5Beztv%5D.mkv%5Beztv%5D&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A80&tr=udp%3A%2F%2Fglotorrents.pw%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce&tr=udp%3A%2F%2Fexodus.desync.com%3A6969"
             }
    }
  }

  describe "#initialize(episode_hash)" do
    it "returns a valid instance of Episode class"
  end

  describe "#basename" do
    it "returns the original episode name as a string"
  end

  describe "#show" do
    it "returns the correct name of the TV Show as a string"
  end

  describe "#season" do
    it "returns the correct season number as an integer"
  end

  describe "#number" do
    it "returns the correct episode number as an integer"
  end

  describe "#links" do
  end
end
