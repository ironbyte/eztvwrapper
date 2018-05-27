RSpec.describe EZTVWrapper::EpisodeFactory do
  subject(:mr_robot_show_ep_list) { EZTVWrapper::EpisodeFactory.call("/shows/1250/mr-robot/") }
  
  describe ".call(show_url)" do
    it "returns an array of newly created Episode objects given the show url" do
      expect(mr_robot_show_ep_list).to be_instance_of(Array)
    end
  end
end
