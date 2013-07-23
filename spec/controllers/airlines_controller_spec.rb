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

describe AirlinesController do

  # This should return the minimal set of attributes required to create a valid
  # Airline. As you add validations to Airline, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AirlinesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all airlines as @airlines" do
      airline = Airline.create! valid_attributes
      get :index, {}, valid_session
      assigns(:airlines).should eq([airline])
    end
  end

  describe "GET show" do
    it "assigns the requested airline as @airline" do
      airline = Airline.create! valid_attributes
      get :show, {:id => airline.to_param}, valid_session
      assigns(:airline).should eq(airline)
    end
  end

  describe "GET new" do
    it "assigns a new airline as @airline" do
      get :new, {}, valid_session
      assigns(:airline).should be_a_new(Airline)
    end
  end

  describe "GET edit" do
    it "assigns the requested airline as @airline" do
      airline = Airline.create! valid_attributes
      get :edit, {:id => airline.to_param}, valid_session
      assigns(:airline).should eq(airline)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Airline" do
        expect {
          post :create, {:airline => valid_attributes}, valid_session
        }.to change(Airline, :count).by(1)
      end

      it "assigns a newly created airline as @airline" do
        post :create, {:airline => valid_attributes}, valid_session
        assigns(:airline).should be_a(Airline)
        assigns(:airline).should be_persisted
      end

      it "redirects to the created airline" do
        post :create, {:airline => valid_attributes}, valid_session
        response.should redirect_to(Airline.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved airline as @airline" do
        # Trigger the behavior that occurs when invalid params are submitted
        Airline.any_instance.stub(:save).and_return(false)
        post :create, {:airline => { "name" => "invalid value" }}, valid_session
        assigns(:airline).should be_a_new(Airline)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Airline.any_instance.stub(:save).and_return(false)
        post :create, {:airline => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested airline" do
        airline = Airline.create! valid_attributes
        # Assuming there are no other airlines in the database, this
        # specifies that the Airline created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Airline.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => airline.to_param, :airline => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested airline as @airline" do
        airline = Airline.create! valid_attributes
        put :update, {:id => airline.to_param, :airline => valid_attributes}, valid_session
        assigns(:airline).should eq(airline)
      end

      it "redirects to the airline" do
        airline = Airline.create! valid_attributes
        put :update, {:id => airline.to_param, :airline => valid_attributes}, valid_session
        response.should redirect_to(airline)
      end
    end

    describe "with invalid params" do
      it "assigns the airline as @airline" do
        airline = Airline.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Airline.any_instance.stub(:save).and_return(false)
        put :update, {:id => airline.to_param, :airline => { "name" => "invalid value" }}, valid_session
        assigns(:airline).should eq(airline)
      end

      it "re-renders the 'edit' template" do
        airline = Airline.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Airline.any_instance.stub(:save).and_return(false)
        put :update, {:id => airline.to_param, :airline => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested airline" do
      airline = Airline.create! valid_attributes
      expect {
        delete :destroy, {:id => airline.to_param}, valid_session
      }.to change(Airline, :count).by(-1)
    end

    it "redirects to the airlines list" do
      airline = Airline.create! valid_attributes
      delete :destroy, {:id => airline.to_param}, valid_session
      response.should redirect_to(airlines_url)
    end
  end

end