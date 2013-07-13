class SafetyCardsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /safety_cards
  # GET /safety_cards.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @safety_cards }
    end
  end

  # GET /safety_cards/1
  # GET /safety_cards/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @safety_card }
    end
  end

  # GET /safety_cards/new
  # GET /safety_cards/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @safety_card }
    end
  end

  # GET /safety_cards/1/edit
  def edit
  end

  # POST /safety_cards
  # POST /safety_cards.json
  def create
    respond_to do |format|
      if @safety_card.save
        format.html { redirect_to @safety_card, notice: 'Safety card was successfully created.' }
        format.json { render json: @safety_card, status: :created, location: @safety_card }
      else
        format.html { render action: "new" }
        format.json { render json: @safety_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /safety_cards/1
  # PUT /safety_cards/1.json
  def update
    respond_to do |format|
      if @safety_card.update_attributes(params[:safety_card])
        format.html { redirect_to @safety_card, notice: 'Safety card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @safety_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /safety_cards/1
  # DELETE /safety_cards/1.json
  def destroy
    @safety_card.destroy

    respond_to do |format|
      format.html { redirect_to safety_cards_url }
      format.json { head :no_content }
    end
  end
end
