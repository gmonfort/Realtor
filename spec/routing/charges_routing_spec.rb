require "spec_helper"

describe ChargesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/charges" }.should route_to(:controller => "charges", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/charges/new" }.should route_to(:controller => "charges", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/charges/1" }.should route_to(:controller => "charges", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/charges/1/edit" }.should route_to(:controller => "charges", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/charges" }.should route_to(:controller => "charges", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/charges/1" }.should route_to(:controller => "charges", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/charges/1" }.should route_to(:controller => "charges", :action => "destroy", :id => "1")
    end

  end
end
