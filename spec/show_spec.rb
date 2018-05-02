RSpec.describe EZTVWrapper::Show do
  subject(:mr_robot_show) { EZTVWrapper::Show.new("Mr. Robot") }

  describe "#initialize" do
    context "When a given TV show is found" do
      it "returns a valid instance of EZTVWrapper::Show" do
        expect(mr_robot_show).to be_instance_of(EZTVWrapper::Show)
      end
    end

    context "When a given TV show is not found" do
      it "raises EZTVWrapper::Errors::ShowNotFound" do
        expect{ EZTVWrapper::Show.new("Shingeki no Kyojin") }.to raise_error(EZTVWrapper::Errors::ShowNotFound)
      end
    end

  describe "#show_url" do
    it "returns the EZTV Show page URL as a string" do
      expect(mr_robot_show.show_url).to eql "/shows/1250/mr-robot/"
    end
  end

  describe "#episodes" do
  end

  describe "#episode(season_no, episode_no)" do
  end

  describe "#season(season_no)" do
  end
end
