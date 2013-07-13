require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SeatManufacturersController do

  # This should return the minimal set of attributes required to create a valid
  # SeatManufacturer. As you add validations to SeatManufacturer, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SeatManufacturersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all seat_manufacturers as @seat_manufacturers" do
      seat_manufacturer = SeatManufacturer.create! valid_attributes
      get :index, {}, valid_session
      assigns(:seat_manufacturers).should eq([seat_manufacturer])
    end
  end

  describe "GET show" do
    it "assigns the requested seat_manufacturer as @seat_manufacturer" do
      seat_manufacturer = SeatManufacturer.create! valid_attributes
      get :show, {:id => seat_manufacturer.to_param}, valid_session
      assigns(:seat_manufacturer).should eq(seat_manufacturer)
    end
  end

  describe "GET new" do
    it "assigns a new seat_manufacturer as @seat_manufacturer" do
      get :new, {}, valid_session
      assigns(:seat_manufacturer).should be_a_new(SeatManufacturer)
    end
  end

  describe "GET edit" do
    it "assigns the requested seat_manufacturer as @seat_manufacturer" do
      seat_manufacturer = SeatManufacturer.create! valid_attributes
      get :edit, {:id => seat_manufacturer.to_param}, valid_session
      assigns(:seat_manufacturer).should eq(seat_manufacturer)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SeatManufacturer" do
        expect {
          post :create, {:seat_manufacturer => valid_attributes}, valid_session
        }.to change(SeatManufacturer, :count).by(1)
      end

      it "assigns a newly created seat_manufacturer as @seat_manufacturer" do
        post :create, {:seat_manufacturer => valid_attributes}, valid_session
        assigns(:seat_manufacturer).should be_a(SeatManufacturer)
        assigns(:seat_manufacturer).should be_persisted
      end

      it "redirects to the created seat_manufacturer" do
        post :create, {:seat_manufacturer => valid_attributes}, valid_session
        response.should redirect_to(SeatManufacturer.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved seat_manufacturer as @seat_manufacturer" do
        # Trigger the behavior that occurs when invalid params are submitted
        SeatManufacturer.any_instance.stub(:save).and_return(false)
        post :create, {:seat_manufacturer => { "name" => "invalid value" }}, valid_session
        assigns(:seat_manufacturer).should be_a_new(SeatManufacturer)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SeatManufacturer.any_instance.stub(:save).and_return(false)
        post :create, {:seat_manufacturer => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested seat_manufacturer" do
        seat_manufacturer = SeatManufacturer.create! valid_attributes
        # Assuming there are no other seat_manufacturers in the database, this
        # specifies that the SeatManufacturer created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SeatManufacturer.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => seat_manufacturer.to_param, :seat_manufacturer => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested seat_manufacturer as @seat_manufacturer" do
        seat_manufacturer = SeatManufacturer.create! valid_attributes
        put :update, {:id => seat_manufacturer.to_param, :seat_manufacturer => valid_attributes}, valid_session
        assigns(:seat_manufacturer).should eq(seat_manufacturer)
      end

      it "redirects to the seat_manufacturer" do
        seat_manufacturer = SeatManufacturer.create! valid_attributes
        put :update, {:id => seat_manufacturer.to_param, :seat_manufacturer => valid_attributes}, valid_session
        response.should redirect_to(seat_manufacturer)
      end
    end

    describe "with invalid params" do
      it "assigns the seat_manufacturer as @seat_manufacturer" do
        seat_manufacturer = SeatManufacturer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SeatManufacturer.any_instance.stub(:save).and_return(false)
        put :update, {:id => seat_manufacturer.to_param, :seat_manufacturer => { "name" => "invalid value" }}, valid_session
        assigns(:seat_manufacturer).should eq(seat_manufacturer)
      end

      it "re-renders the 'edit' template" do
        seat_manufacturer = SeatManufacturer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SeatManufacturer.any_instance.stub(:save).and_return(false)
        put :update, {:id => seat_manufacturer.to_param, :seat_manufacturer => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested seat_manufacturer" do
      seat_manufacturer = SeatManufacturer.create! valid_attributes
      expect {
        delete :destroy, {:id => seat_manufacturer.to_param}, valid_session
      }.to change(SeatManufacturer, :count).by(-1)
    end

    it "redirects to the seat_manufacturers list" do
      seat_manufacturer = SeatManufacturer.create! valid_attributes
      delete :destroy, {:id => seat_manufacturer.to_param}, valid_session
      response.should redirect_to(seat_manufacturers_url)
    end
  end

end
