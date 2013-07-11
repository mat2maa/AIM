class AeroplanesController < ApplicationController
  # GET /aeroplanes
  # GET /aeroplanes.json
  def index
    @aeroplanes = Aeroplane.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aeroplanes }
    end
  end

  # GET /aeroplanes/1
  # GET /aeroplanes/1.json
  def show
    @aeroplane = Aeroplane.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aeroplane }
    end
  end

  # GET /aeroplanes/new
  # GET /aeroplanes/new.json
  def new
    @aeroplane = Aeroplane.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aeroplane }
    end
  end

  # GET /aeroplanes/1/edit
  def edit
    @aeroplane = Aeroplane.find(params[:id])
  end

  # POST /aeroplanes
  # POST /aeroplanes.json
  def create
    @aeroplane = Aeroplane.new(params[:aeroplane])

    respond_to do |format|
      if @aeroplane.save
        format.html { redirect_to @aeroplane, notice: 'Aeroplane was successfully created.' }
        format.json { render json: @aeroplane, status: :created, location: @aeroplane }
      else
        format.html { render action: "new" }
        format.json { render json: @aeroplane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aeroplanes/1
  # PUT /aeroplanes/1.json
  def update
    @aeroplane = Aeroplane.find(params[:id])

    respond_to do |format|
      if @aeroplane.update_attributes(params[:aeroplane])
        format.html { redirect_to @aeroplane, notice: 'Aeroplane was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aeroplane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aeroplanes/1
  # DELETE /aeroplanes/1.json
  def destroy
    @aeroplane = Aeroplane.find(params[:id])
    @aeroplane.destroy

    respond_to do |format|
      format.html { redirect_to aeroplanes_url }
      format.json { head :no_content }
    end
  end
end
