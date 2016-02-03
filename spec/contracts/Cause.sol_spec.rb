require 'rails_helper'

RSpec.describe "Cause.sol" do

  before do
    client = Ethereum::HttpClient.new("localhost", "8545")
    @accounts = client.accounts['result']
    init = Ethereum::Initializer.new(Rails.root + "app/contracts/Cause.sol", client)
    init.build_all
    puts "creating cause"
    @cause = Cause.new
    @cause.as(@accounts.first)

    puts "sender: #{@cause.sender}"
    @cause.deploy_and_wait(10)

    puts "contract: #{@cause}"
  end

  describe "init" do
    it "starts with no award" do
      expect(@cause.call_award).to eq(0)
    end

    it "sets the organizer" do
      puts "getting organizer"
      expect(@cause.call_organizer).to eq(@accounts.first)
    end

  end

  describe "donate" do

    it "adds to the balance" do

    end
    it "records the amount donated and by whom"

  end


end
