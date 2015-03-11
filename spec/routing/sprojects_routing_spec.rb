require "spec_helper"

describe SprojectsController do
  describe "routing" do

    it "routes to #index" do
      get("/sprojects").should route_to("sprojects#index")
    end

    it "routes to #new" do
      get("/sprojects/new").should route_to("sprojects#new")
    end

    it "routes to #show" do
      get("/sprojects/1").should route_to("sprojects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sprojects/1/edit").should route_to("sprojects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sprojects").should route_to("sprojects#create")
    end

    it "routes to #update" do
      put("/sprojects/1").should route_to("sprojects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sprojects/1").should route_to("sprojects#destroy", :id => "1")
    end

  end
end
