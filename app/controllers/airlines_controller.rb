class AirlinesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /airlines
  # GET /airlines.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @airlines }
    end
  end

  # GET /airlines/1
  # GET /airlines/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @airline }
    end
  end

  # GET /airlines/new
  # GET /airlines/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @airline }
    end
  end

  # GET /airlines/1/edit
  def edit
  end

  # POST /airlines
  # POST /airlines.json
  def create
    respond_to do |format|
      if @airline.save
        format.html { redirect_to @airline, notice: 'Airline was successfully created.' }
        format.json { render json: @airline, status: :created, location: @airline }
      else
        format.html { render action: "new" }
        format.json { render json: @airline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /airlines/1
  # PUT /airlines/1.json
  def update
    respond_to do |format|
      if @airline.update_attributes(params[:airline])
        format.html { redirect_to @airline, notice: 'Airline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @airline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airlines/1
  # DELETE /airlines/1.json
  def destroy
    @airline.destroy

    respond_to do |format|
      format.html { redirect_to airlines_url }
      format.json { head :no_content }
    end
  end
end
