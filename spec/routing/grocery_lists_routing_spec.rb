require "spec_helper"

describe GroceryListsController do
  describe "routing" do

    it "routes to #index" do
      get("/grocery_lists").should route_to("grocery_lists#index")
    end

    it "routes to #new" do
      get("/grocery_lists/new").should route_to("grocery_lists#new")
    end

    it "routes to #show" do
      get("/grocery_lists/1").should route_to("grocery_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/grocery_lists/1/edit").should route_to("grocery_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/grocery_lists").should route_to("grocery_lists#create")
    end

    it "routes to #update" do
      put("/grocery_lists/1").should route_to("grocery_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/grocery_lists/1").should route_to("grocery_lists#destroy", :id => "1")
    end

  end
end
