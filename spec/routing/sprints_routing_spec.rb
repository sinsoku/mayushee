require "spec_helper"

describe SprintsController do
  describe "routing" do

    it "routes to #index" do
      get("/projects/1/sprints").should route_to("sprints#index", project_id: '1')
    end

    it "routes to #new" do
      get("/projects/1/sprints/new").should route_to("sprints#new", project_id: '1')
    end

    it "routes to #show" do
      get("/projects/1/sprints/1").should route_to("sprints#show", project_id: '1', id: "1")
    end

    it "routes to #edit" do
      get("/projects/1/sprints/1/edit").should route_to("sprints#edit", project_id: '1', id: "1")
    end

    it "routes to #create" do
      post("/projects/1/sprints").should route_to("sprints#create", project_id: '1')
    end

    it "routes to #update" do
      put("/projects/1/sprints/1").should route_to("sprints#update", project_id: '1', id: "1")
    end

    it "routes to #destroy" do
      delete("/projects/1/sprints/1").should route_to("sprints#destroy", project_id: '1', id: "1")
    end

  end
end
