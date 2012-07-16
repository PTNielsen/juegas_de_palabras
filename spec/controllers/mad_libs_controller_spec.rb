require 'spec_helper'

describe MadLibsController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'fill'" do
    it "returns http success" do
      get 'fill'
      response.should be_success
    end
  end

end
