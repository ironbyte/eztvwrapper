RSpec.describe EZTVWrapper::Episode do
  subject(:mrrobot_hdtv_720p_episode) do
    EZTVWrapper::Episode.new(
      "Mr.Robot.S02E05.720p.HDTV.x264-FLEET[eztv].mkv",
      { 
        :episode_url => "https://eztv.ag/ep/153090/mr-robot-s02e05-720p-hdtv-x264-fleet/",
        :magnet_uri => "magnet:?xt=urn:btih:70ed63abe40dfb69b995febb1fc770a30661740c&dn=Mr.Robot.S02E05.720p.HDTV.x264-FLEET%5Beztv%5D.mkv%5Beztv%5D&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A80&tr=udp%3A%2F%2Fglotorrents.pw%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce&tr=udp%3A%2F%2Fexodus.desync.com%3A6969",
        :torrent_url => "https://zoink.ch/torrent/Mr.Robot.S02E05.720p.HDTV.x264-FLEET[eztv].mkv.torrent"
      }
    )
  end
  subject(:strangerthing_webrip_720p_episode) do
    EZTVWrapper::Episode.new(
      "Stranger.Things.S02E02.Chapter.Two.Trick.Or.Treat.Freak.720p.NF.WEBRip.DD5.1.x264-NTb[eztv].mkv",
      {
        :episode_url => "",
        :magnet_uri => "",
        :torrent_url => ""
      }
    )
  end
  subject(:proper_gameofthrones_hdtv_720p_episode) do
    EZTVWrapper::Episode.new(
      "Game.of.Thrones.S07E06.PROPER.720p.HDTV.h264-TBS[eztv].mkv",
      {
        :episode_url => "",
        :magnet_uri => "",
        :torrent_url => ""
      })
  end

  describe "#original_episode_name" do
    it "returns the original episode name as a string" do
      expect(mrrobot_hdtv_720p_episode.original_episode_name).to eql "Mr.Robot.S02E05.720p.HDTV.x264-FLEET[eztv].mkv"
    end
  end

  describe "#show_name" do
    it "returns the correct name of the TV Show as a string" do
      expect(mrrobot_hdtv_720p_episode.show_name).to eql "Mr.Robot"
    end
  end

  describe "#season_no" do
    it "returns the correct season number as an integer" do
      expect(mrrobot_hdtv_720p_episode.season_no).to eql 2
    end
  end

  describe "#episode_no" do
    it "returns the correct episode number as an integer" do
      expect(mrrobot_hdtv_720p_episode.episode_no).to eql 5
    end
  end

  describe "#tag" do
    it "returns the correct scene release tag as a string if it exists" do
      expect(proper_gameofthrones_hdtv_720p_episode.tag).to eql "PROPER"
    end
  end

  describe "#episode_title" do
    it "returns the correct episode title as a string if it exists" do
      expect(strangerthing_webrip_720p_episode.episode_title).to eql "Chapter.Two.Trick.Or.Treat.Freak"
    end
  end

  describe "#resolution" do
    it "returns the correct resolution as a string if it exists" do
      expect(mrrobot_hdtv_720p_episode.resolution).to eql "720p"
    end
  end

  describe "#source" do
    context "when original episode name containing single-word source" do
      it "returns the correct source as a string" do
        expect(mrrobot_hdtv_720p_episode.source).to eql "HDTV"
      end
    end
    context "when original episode name containing multi-word source" do
      it "returns the correct source as a string" do
        expect(strangerthing_webrip_720p_episode.source).to eql "NF.WEBRip.DD5.1"
      end
    end
  end

  describe "#encoding" do
    context "when original episode name containing either x264 (case-insensitve)" do
      it "returns the correct encoding as a string" do
        expect(mrrobot_hdtv_720p_episode.encoding).to eql "x264"
      end
    end

    context "when original episode name containing h264 (case-insensitve)" do
      it "returns the correct encoding as a string" do
        expect(mrrobot_hdtv_720p_episode.encoding).to eql "h264"
      end
    end
  end

  describe "#release_group" do
    it "returns the correct scene release group" do
      expect(mrrobot_hdtv_720p_episode.release_group).to eql "FLEET"
    end
  end

  describe "#links" do
  end

  describe "file_size" do
    it "returns the correct file size as a float (in MB)" do
      expect(mrrobot_hdtv_720p_episode.file_size).to eql 759.17
    end
  end
end
