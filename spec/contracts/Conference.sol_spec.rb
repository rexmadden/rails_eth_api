require 'rails_helper'

RSpec.describe "Conference.sol" do

  before do
    client = Ethereum::HttpClient.new("localhost", "8545")
    init = Ethereum::Initializer.new(Rails.root + "app/contracts/Conference.sol", client)
    init.build_all
    @conference_instance = Conference.new
    @result = @conference_instance.deploy_and_wait(1)
  end

  describe "init" do
    it "returns http success" do

    end

    it "quota starts at 500" do
      expect(@conference_instance.c_quota).to eq(500)
    end
  end

end
