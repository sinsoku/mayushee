require "spec_helper"

describe StoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/projects/1/stories").should route_to("stories#index", project_id: '1')
    end

    it "routes to #new" do
      get("/projects/1/stories/new").should route_to("stories#new", project_id: '1')
    end

    it "routes to #show" do
      get("/projects/1/stories/1").should route_to("stories#show", project_id: '1', id: "1")
    end

    it "routes to #edit" do
      get("/projects/1/stories/1/edit").should route_to("stories#edit", project_id: '1', id: "1")
    end

    it "routes to #create" do
      post("/projects/1/stories").should route_to("stories#create", project_id: '1')
    end

    it "routes to #update" do
      put("/projects/1/stories/1").should route_to("stories#update", project_id: '1', id: "1")
    end

    it "routes to #destroy" do
      delete("/projects/1/stories/1").should route_to("stories#destroy", project_id: '1', id: "1")
    end

  end
end
