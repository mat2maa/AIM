class SeatLayoutsController < ApplicationController
  # GET /seat_layouts
  # GET /seat_layouts.json
  def index
    @seat_layouts = SeatLayout.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seat_layouts }
    end
  end

  # GET /seat_layouts/1
  # GET /seat_layouts/1.json
  def show
    @seat_layout = SeatLayout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @seat_layout }
    end
  end

  # GET /seat_layouts/new
  # GET /seat_layouts/new.json
  def new
    @seat_layout = SeatLayout.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @seat_layout }
    end
  end

  # GET /seat_layouts/1/edit
  def edit
    @seat_layout = SeatLayout.find(params[:id])
  end

  # POST /seat_layouts
  # POST /seat_layouts.json
  def create
    @seat_layout = SeatLayout.new(params[:seat_layout])

    respond_to do |format|
      if @seat_layout.save
        format.html { redirect_to @seat_layout, notice: 'Seat layout was successfully created.' }
        format.json { render json: @seat_layout, status: :created, location: @seat_layout }
      else
        format.html { render action: "new" }
        format.json { render json: @seat_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seat_layouts/1
  # PUT /seat_layouts/1.json
  def update
    @seat_layout = SeatLayout.find(params[:id])

    respond_to do |format|
      if @seat_layout.update_attributes(params[:seat_layout])
        format.html { redirect_to @seat_layout, notice: 'Seat layout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @seat_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seat_layouts/1
  # DELETE /seat_layouts/1.json
  def destroy
    @seat_layout = SeatLayout.find(params[:id])
    @seat_layout.destroy

    respond_to do |format|
      format.html { redirect_to seat_layouts_url }
      format.json { head :no_content }
    end
  end
end
