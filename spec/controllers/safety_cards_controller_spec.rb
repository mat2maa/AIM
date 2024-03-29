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

describe SafetyCardsController do

  # This should return the minimal set of attributes required to create a valid
  # SafetyCard. As you add validations to SafetyCard, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SafetyCardsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all safety_cards as @safety_cards" do
      safety_card = SafetyCard.create! valid_attributes
      get :index, {}, valid_session
      assigns(:safety_cards).should eq([safety_card])
    end
  end

  describe "GET show" do
    it "assigns the requested safety_card as @safety_card" do
      safety_card = SafetyCard.create! valid_attributes
      get :show, {:id => safety_card.to_param}, valid_session
      assigns(:safety_card).should eq(safety_card)
    end
  end

  describe "GET new" do
    it "assigns a new safety_card as @safety_card" do
      get :new, {}, valid_session
      assigns(:safety_card).should be_a_new(SafetyCard)
    end
  end

  describe "GET edit" do
    it "assigns the requested safety_card as @safety_card" do
      safety_card = SafetyCard.create! valid_attributes
      get :edit, {:id => safety_card.to_param}, valid_session
      assigns(:safety_card).should eq(safety_card)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SafetyCard" do
        expect {
          post :create, {:safety_card => valid_attributes}, valid_session
        }.to change(SafetyCard, :count).by(1)
      end

      it "assigns a newly created safety_card as @safety_card" do
        post :create, {:safety_card => valid_attributes}, valid_session
        assigns(:safety_card).should be_a(SafetyCard)
        assigns(:safety_card).should be_persisted
      end

      it "redirects to the created safety_card" do
        post :create, {:safety_card => valid_attributes}, valid_session
        response.should redirect_to(SafetyCard.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved safety_card as @safety_card" do
        # Trigger the behavior that occurs when invalid params are submitted
        SafetyCard.any_instance.stub(:save).and_return(false)
        post :create, {:safety_card => { "name" => "invalid value" }}, valid_session
        assigns(:safety_card).should be_a_new(SafetyCard)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SafetyCard.any_instance.stub(:save).and_return(false)
        post :create, {:safety_card => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested safety_card" do
        safety_card = SafetyCard.create! valid_attributes
        # Assuming there are no other safety_cards in the database, this
        # specifies that the SafetyCard created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SafetyCard.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => safety_card.to_param, :safety_card => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested safety_card as @safety_card" do
        safety_card = SafetyCard.create! valid_attributes
        put :update, {:id => safety_card.to_param, :safety_card => valid_attributes}, valid_session
        assigns(:safety_card).should eq(safety_card)
      end

      it "redirects to the safety_card" do
        safety_card = SafetyCard.create! valid_attributes
        put :update, {:id => safety_card.to_param, :safety_card => valid_attributes}, valid_session
        response.should redirect_to(safety_card)
      end
    end

    describe "with invalid params" do
      it "assigns the safety_card as @safety_card" do
        safety_card = SafetyCard.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SafetyCard.any_instance.stub(:save).and_return(false)
        put :update, {:id => safety_card.to_param, :safety_card => { "name" => "invalid value" }}, valid_session
        assigns(:safety_card).should eq(safety_card)
      end

      it "re-renders the 'edit' template" do
        safety_card = SafetyCard.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SafetyCard.any_instance.stub(:save).and_return(false)
        put :update, {:id => safety_card.to_param, :safety_card => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested safety_card" do
      safety_card = SafetyCard.create! valid_attributes
      expect {
        delete :destroy, {:id => safety_card.to_param}, valid_session
      }.to change(SafetyCard, :count).by(-1)
    end

    it "redirects to the safety_cards list" do
      safety_card = SafetyCard.create! valid_attributes
      delete :destroy, {:id => safety_card.to_param}, valid_session
      response.should redirect_to(safety_cards_url)
    end
  end

end
