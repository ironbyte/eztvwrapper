RSpec.describe EZTVWrapper::Show do
  let(:existent_eztv_show) { "Mr. Robot" }
  let(:non_existent_eztv_show) { "Shingeki no Kyojin" }

  describe "#initialize" do
    context "When a given EZTV show is existent" do
      it "returns a valid Show class object"
    end

    context "When a given EZTV show is non-existent" do
      it "raises error"
    end

    context "When EZTV doesn't return HTTP Status 200" do
      it "raises error"
    end
  end

  describe "#show_url" do
    it "returns the EZTV Show URL as a String object"
  end

  describe "#episodes" do
    it "returns a list of episode as an Array object"
  end

  describe "#episode(season_no, episode_no)" do
    it "returns the specified episode as an Episode object"
  end

  describe "#seasons" do
    it "returns seasons as arrays? - To be decided"
  end

  describe "#season(season_no)" do
    it "returns a list of episodes of the specified season as an Array object"
  end
end
