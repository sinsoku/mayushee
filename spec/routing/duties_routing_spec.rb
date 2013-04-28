require "spec_helper"

describe DutiesController do
  describe "routing" do

    it "routes to #index" do
      get("/projects/1/duties").should route_to("duties#index", project_id: '1')
    end

    it "routes to #new" do
      get("/projects/1/duties/new").should route_to("duties#new", project_id: '1')
    end

    it "routes to #show" do
      get("/duties/1").should route_to("duties#show", id: "1")
    end

    it "routes to #edit" do
      get("/duties/1/edit").should route_to("duties#edit", id: "1")
    end

    it "routes to #create" do
      post("/projects/1/duties").should route_to("duties#create", project_id: '1')
    end

    it "routes to #update" do
      put("/duties/1").should route_to("duties#update", id: "1")
    end

    it "routes to #destroy" do
      delete("/duties/1").should route_to("duties#destroy", id: "1")
    end

  end
end
