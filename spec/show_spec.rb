RSpec.describe EZTVWrapper::Show do
  subject(:existent_show) { EZTVWrapper::Show.new("Mr. Robot") }
  subject(:non_existent_show) {EZTVWrapper::Show.new("Shingeki no Kyojin") }

  describe "#initialize(show)" do
    context "When show is found" do
      it "returns a valid instance of Show class" do
        expect(existent_show).to be_instance_of(EZTVWrapper::Show)
      end
    end

    context "When show is not found" do
      it "raises EZTVWrapper::TVShowNotFound" do
        expect{ non_existent_show }.to raise_error(EZTVWrapper::ShowNotFound)
      end
    end
  end

  describe "#show_url" do
    it "returns the show url as a string" do
      expect(existent_show.show_url).to eql "/shows/1250/mr-robot/"
    end
  end

  describe "#episodes" do
    it "returns an exhausive list of episodes of the show as an array"
  end

  describe "#episode(season, number)" do
    it "returns an exhaustive list of all versions of a particular episode of the show an array"
  end
end
