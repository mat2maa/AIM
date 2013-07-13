class SeatBeltsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /seat_belts
  # GET /seat_belts.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seat_belts }
    end
  end

  # GET /seat_belts/1
  # GET /seat_belts/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @seat_belt }
    end
  end

  # GET /seat_belts/new
  # GET /seat_belts/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @seat_belt }
    end
  end

  # GET /seat_belts/1/edit
  def edit
  end

  # POST /seat_belts
  # POST /seat_belts.json
  def create
    respond_to do |format|
      if @seat_belt.save
        format.html { redirect_to @seat_belt, notice: 'Seat belt was successfully created.' }
        format.json { render json: @seat_belt, status: :created, location: @seat_belt }
      else
        format.html { render action: "new" }
        format.json { render json: @seat_belt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seat_belts/1
  # PUT /seat_belts/1.json
  def update
    respond_to do |format|
      if @seat_belt.update_attributes(params[:seat_belt])
        format.html { redirect_to @seat_belt, notice: 'Seat belt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @seat_belt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seat_belts/1
  # DELETE /seat_belts/1.json
  def destroy
    @seat_belt.destroy

    respond_to do |format|
      format.html { redirect_to seat_belts_url }
      format.json { head :no_content }
    end
  end
end
