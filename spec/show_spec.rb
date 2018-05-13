RSpec.describe EZTVWrapper::Show do
  subject(:mr_robot_show) { EZTVWrapper::Show.new("Mr. Robot") }


  describe "#initialize(show_name)" do
    context "When the requested TV show is found" do
      it "returns a valid instance of EZTVWrapper::Show" do
        expect(mr_robot_show).to be_instance_of(EZTVWrapper::Show)
      end
    end

    context "When the requested TV show is not found" do
      it "raises EZTVWrapper::TVShowNotFound" do
        expect{ EZTVWrapper::Show.new("Shingeki no Kyojin") }.to raise_error(EZTVWrapper::ShowNotFound)
      end
    end
  end

  describe "#show_url" do
    it "returns the correct requested TV Show's EZTV page URL as a string" do
      expect(mr_robot_show.show_url).to eql "/shows/1250/mr-robot/"
    end
  end

  describe "#episodes" do
  end

  describe "#episode(season_no, episode_no)" do
  end
end
