class SeatClassesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /seat_classes
  # GET /seat_classes.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seat_classes }
    end
  end

  # GET /seat_classes/1
  # GET /seat_classes/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @seat_class }
    end
  end

  # GET /seat_classes/new
  # GET /seat_classes/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @seat_class }
    end
  end

  # GET /seat_classes/1/edit
  def edit
  end

  # POST /seat_classes
  # POST /seat_classes.json
  def create
    respond_to do |format|
      if @seat_class.save
        format.html { redirect_to @seat_class, notice: 'Seat class was successfully created.' }
        format.json { render json: @seat_class, status: :created, location: @seat_class }
      else
        format.html { render action: "new" }
        format.json { render json: @seat_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seat_classes/1
  # PUT /seat_classes/1.json
  def update
    respond_to do |format|
      if @seat_class.update_attributes(params[:seat_class])
        format.html { redirect_to @seat_class, notice: 'Seat class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @seat_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seat_classes/1
  # DELETE /seat_classes/1.json
  def destroy
    @seat_class.destroy

    respond_to do |format|
      format.html { redirect_to seat_classes_url }
      format.json { head :no_content }
    end
  end
end
