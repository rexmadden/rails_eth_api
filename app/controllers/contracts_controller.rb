class ContractsController < ApplicationController
  def create
    client = Ethereum::HttpClient.new("localhost", "8545")
    init = Ethereum::Initializer.new(Rails.root + "app/contracts/Conference.sol", client)
    init.build_all
    conference_instance = Conference.new
    result = conference_instance.deploy_and_wait(60)
    puts result

  end
end
