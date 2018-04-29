require 'coveralls'
Coveralls.wear!

require "bundler/setup"
require "eztvwrapper"
require 'webmock/rspec'

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:each) do
    stub_request(:get, "https://eztv.ag/showlist/").to_return(File.new("spec/fixtures/responses/eztv_showlist.http"))
    stub_request(:get, "https://eztv.ag/shows/1250/mr-robot/").to_return(File.new("spec/fixtures/responses/eztv_shows_1250_mr-robot.http"))
  end
end
