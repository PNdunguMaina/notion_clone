require "rails_helper"

RSpec.describe GeneratorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/generators").to route_to("generators#index")
    end

     it "root route to generators#index" do
      expect(get: "/").to route_to("generators#index")
    end
  end
end
