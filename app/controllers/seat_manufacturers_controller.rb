class SeatManufacturersController < ApplicationController
  # GET /seat_manufacturers
  # GET /seat_manufacturers.json
  def index
    @seat_manufacturers = SeatManufacturer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seat_manufacturers }
    end
  end

  # GET /seat_manufacturers/1
  # GET /seat_manufacturers/1.json
  def show
    @seat_manufacturer = SeatManufacturer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @seat_manufacturer }
    end
  end

  # GET /seat_manufacturers/new
  # GET /seat_manufacturers/new.json
  def new
    @seat_manufacturer = SeatManufacturer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @seat_manufacturer }
    end
  end

  # GET /seat_manufacturers/1/edit
  def edit
    @seat_manufacturer = SeatManufacturer.find(params[:id])
  end

  # POST /seat_manufacturers
  # POST /seat_manufacturers.json
  def create
    @seat_manufacturer = SeatManufacturer.new(params[:seat_manufacturer])

    respond_to do |format|
      if @seat_manufacturer.save
        format.html { redirect_to @seat_manufacturer, notice: 'Seat manufacturer was successfully created.' }
        format.json { render json: @seat_manufacturer, status: :created, location: @seat_manufacturer }
      else
        format.html { render action: "new" }
        format.json { render json: @seat_manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seat_manufacturers/1
  # PUT /seat_manufacturers/1.json
  def update
    @seat_manufacturer = SeatManufacturer.find(params[:id])

    respond_to do |format|
      if @seat_manufacturer.update_attributes(params[:seat_manufacturer])
        format.html { redirect_to @seat_manufacturer, notice: 'Seat manufacturer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @seat_manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seat_manufacturers/1
  # DELETE /seat_manufacturers/1.json
  def destroy
    @seat_manufacturer = SeatManufacturer.find(params[:id])
    @seat_manufacturer.destroy

    respond_to do |format|
      format.html { redirect_to seat_manufacturers_url }
      format.json { head :no_content }
    end
  end
end
