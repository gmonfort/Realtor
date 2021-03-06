require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe ChargesController do
  login_user

  def mock_charge(stubs={})
    @mock_charge ||= mock_model(Charge, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all charges as @charges" do
      Charge.stub(:all) { [mock_charge] }
      get :index
      assigns(:charges).should eq([mock_charge])
    end
  end

  describe "GET show" do
    it "assigns the requested charge as @charge" do
      Charge.stub(:find).with("37") { mock_charge }
      get :show, :id => "37"
      assigns(:charge).should be(mock_charge)
    end
  end

  describe "GET new" do
    it "assigns a new charge as @charge" do
      Charge.stub(:new) { mock_charge }
      get :new
      assigns(:charge).should be(mock_charge)
    end
  end

  describe "GET edit" do
    it "assigns the requested charge as @charge" do
      Charge.stub(:find).with("37") { mock_charge }
      get :edit, :id => "37"
      assigns(:charge).should be(mock_charge)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created charge as @charge" do
        Charge.stub(:new).with({'these' => 'params'}) { mock_charge(:save => true) }
        post :create, :charge => {'these' => 'params'}
        assigns(:charge).should be(mock_charge)
      end

      it "redirects to the created charge" do
        Charge.stub(:new) { mock_charge(:save => true) }
        post :create, :charge => {}
        response.should redirect_to(charge_url(mock_charge))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved charge as @charge" do
        Charge.stub(:new).with({'these' => 'params'}) { mock_charge(:save => false) }
        post :create, :charge => {'these' => 'params'}
        assigns(:charge).should be(mock_charge)
      end

      it "re-renders the 'new' template" do
        Charge.stub(:new) { mock_charge(:save => false) }
        post :create, :charge => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested charge" do
        Charge.stub(:find).with("37") { mock_charge }
        mock_charge.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :charge => {'these' => 'params'}
      end

      it "assigns the requested charge as @charge" do
        Charge.stub(:find) { mock_charge(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:charge).should be(mock_charge)
      end

      it "redirects to the charge" do
        Charge.stub(:find) { mock_charge(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(charge_url(mock_charge))
      end
    end

    describe "with invalid params" do
      it "assigns the charge as @charge" do
        Charge.stub(:find) { mock_charge(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:charge).should be(mock_charge)
      end

      it "re-renders the 'edit' template" do
        Charge.stub(:find) { mock_charge(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested charge" do
      Charge.stub(:find).with("37") { mock_charge }
      mock_charge.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the charges list" do
      Charge.stub(:find) { mock_charge }
      delete :destroy, :id => "1"
      response.should redirect_to(charges_url)
    end
  end

end
