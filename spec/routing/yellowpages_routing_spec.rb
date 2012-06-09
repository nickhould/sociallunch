require "spec_helper"

describe YellowpagesController do
  describe "routing" do

    it "routes to #index" do
      get("/yellowpages").should route_to("yellowpages#index")
    end

    it "routes to #new" do
      get("/yellowpages/new").should route_to("yellowpages#new")
    end

    it "routes to #show" do
      get("/yellowpages/1").should route_to("yellowpages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/yellowpages/1/edit").should route_to("yellowpages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/yellowpages").should route_to("yellowpages#create")
    end

    it "routes to #update" do
      put("/yellowpages/1").should route_to("yellowpages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/yellowpages/1").should route_to("yellowpages#destroy", :id => "1")
    end

  end
end
