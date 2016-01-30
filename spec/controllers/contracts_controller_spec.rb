require 'rails_helper'

RSpec.describe ContractsController, :type => :controller do

  before do

  end

  describe "GET create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end

    it "creates a contract" do

    end
  end

end
