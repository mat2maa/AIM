require 'spec_helper'

describe "LifeJackets" do
  describe "GET /life_jackets" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get life_jackets_path
      response.status.should be(200)
    end
  end
end
