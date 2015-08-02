require 'rails_helper'

RSpec.describe "CustomRoutes", type: :routing do
  describe "GET /custom_routes" do
    it "works! (now write some real specs)" do
      # get custom_routes_path
      	# expect(:get=>"/login").to have_http_status(200)
      	expect(:get => "/login").to route_to("devise/sessions#new")
      	expect(:get => "/statuses").to route_to("statuses#index")
    end

    it "check the register get" do
    	# expect(:get=>"/register").to have_http_status(200)
    	expect(:get=>"/register").to route_to("devise/registrations#new")
    end

    it "check the logout" do
    	expect(:get=>"/logout").to route_to("devise/sessions#destroy")
    end

  end
end
