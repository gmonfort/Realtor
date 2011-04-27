require "spec_helper"

describe RentalsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/rentals" }.should route_to(:controller => "rentals", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/rentals/new" }.should route_to(:controller => "rentals", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/rentals/1" }.should route_to(:controller => "rentals", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/rentals/1/edit" }.should route_to(:controller => "rentals", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/rentals" }.should route_to(:controller => "rentals", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/rentals/1" }.should route_to(:controller => "rentals", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/rentals/1" }.should route_to(:controller => "rentals", :action => "destroy", :id => "1")
    end

  end
end
