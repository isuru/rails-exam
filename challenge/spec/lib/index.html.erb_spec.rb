require "spec_helper"

describe HomeController do
  render_views

  describe "index" do
    it "renders the controller#index template" do
      get :index
      response.should have_selector("table#table")
    end
  end
end