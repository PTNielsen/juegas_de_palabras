require 'spec_helper'

describe ReportsController do

  describe "GET 'usage'" do
    it "returns http success" do
      get 'usage'
      response.should be_success
    end
  end

end
