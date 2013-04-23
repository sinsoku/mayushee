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
      get("/projects/1/duties/1").should route_to("duties#show", project_id: '1', id: "1")
    end

    it "routes to #edit" do
      get("/projects/1/duties/1/edit").should route_to("duties#edit", project_id: '1', id: "1")
    end

    it "routes to #create" do
      post("/projects/1/duties").should route_to("duties#create", project_id: '1')
    end

    it "routes to #update" do
      put("/projects/1/duties/1").should route_to("duties#update", project_id: '1', id: "1")
    end

    it "routes to #destroy" do
      delete("/projects/1/duties/1").should route_to("duties#destroy", project_id: '1', id: "1")
    end

  end
end
