RSpec.describe EZTVWrapper::EpisodeHarvester do
  subject { described_class }
  let(:show_url) { "/shows/1250/mr-robot/" }
  let(:some_episodes) do
    [
      {
        episode_basename: "Mr.Robot.S01E02.HDTV.x264-KILLERS.mp4[eztv]",
        episode_links: { 
                 episode_url: "/ep/131535/mr-robot-s01e02-hdtv-x264-killers/",
                 torrent_url: "https://zoink.ch/torrent/Mr.Robot.S01E02.HDTV.x264-KILLERS.mp4[eztv].torrent",
                 magnet_uri: "magnet:?xt=urn:btih:a1d5391a1fc7865664570dd71d46430582a303a0&dn=Mr.Robot.S01E02.HDTV.x264-KILLERS.mp4%5Beztv%5D&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A80&tr=udp%3A%2F%2Fglotorrents.pw%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce&tr=udp%3A%2F%2Fexodus.desync.com%3A6969"
               }
      },
      {
        episode_basename: "Mr.Robot.S02E06.PROPER.720p.HDTV.x264-KILLERS[eztv].mkv",
        episode_links: {
                 episode_url: "/ep/153624/mr-robot-s02e06-proper-720p-hdtv-x264-killers/",
                 torrent_url: "https://zoink.ch/torrent/Mr.Robot.S02E06.PROPER.720p.HDTV.x264-KILLERS[eztv].mkv.torrent",
                 magnet_uri: "magnet:?xt=urn:btih:4de55d9171f25362860ed72b0e9c678b087dcaae&dn=Mr.Robot.S02E06.PROPER.720p.HDTV.x264-KILLERS%5Beztv%5D.mkv%5Beztv%5D&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A80&tr=udp%3A%2F%2Fglotorrents.pw%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce&tr=udp%3A%2F%2Fexodus.desync.com%3A6969"
               }
      },
      {
        episode_basename: "Mr.Robot.S03E03.iNTERNAL.720p.WEB.x264-BAMBOOZLE[eztv].mkv",
        episode_links: {
                 episode_url: "/ep/413933/mr-robot-s03e03-internal-720p-web-x264-bamboozle/",
                 torrent_url: "https://zoink.ch/torrent/Mr.Robot.S03E03.iNTERNAL.720p.WEB.x264-BAMBOOZLE[eztv].mkv.torrent",
                 magnet_uri: "magnet:?xt=urn:btih:650d42904672f795d0cc3fd40b83a38382d1f0c1&dn=Mr.Robot.S03E03.iNTERNAL.720p.WEB.x264-BAMBOOZLE%5Beztv%5D.mkv%5Beztv%5D&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A80&tr=udp%3A%2F%2Fglotorrents.pw%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce&tr=udp%3A%2F%2Fexodus.desync.com%3A6969"
               }
      }
    ]
  end
  
  describe ".call(show_url)" do
    it "downloads EZTV show page when given valid show URL" do
      subject.call(show_url)

      expect(a_request(:get, "https://eztv.ag/shows/1250/mr-robot/"))
    end

    it "returns an exhaustive list of harvested episodes as an array" do
      expect(subject.call(show_url)).to include(*some_episodes)
      expect(subject.call(show_url).size).to eql 88
    end
  end
end
