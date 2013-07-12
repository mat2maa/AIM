class LifeJacketsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /life_jackets
  # GET /life_jackets.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @life_jackets }
    end
  end

  # GET /life_jackets/1
  # GET /life_jackets/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @life_jacket }
    end
  end

  # GET /life_jackets/new
  # GET /life_jackets/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @life_jacket }
    end
  end

  # GET /life_jackets/1/edit
  def edit
  end

  # POST /life_jackets
  # POST /life_jackets.json
  def create
    respond_to do |format|
      if @life_jacket.save
        format.html { redirect_to @life_jacket, notice: 'Life jacket was successfully created.' }
        format.json { render json: @life_jacket, status: :created, location: @life_jacket }
      else
        format.html { render action: "new" }
        format.json { render json: @life_jacket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /life_jackets/1
  # PUT /life_jackets/1.json
  def update
    respond_to do |format|
      if @life_jacket.update_attributes(params[:life_jacket])
        format.html { redirect_to @life_jacket, notice: 'Life jacket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @life_jacket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /life_jackets/1
  # DELETE /life_jackets/1.json
  def destroy
    @life_jacket.destroy

    respond_to do |format|
      format.html { redirect_to life_jackets_url }
      format.json { head :no_content }
    end
  end
end
