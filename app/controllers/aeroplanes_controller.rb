class AeroplanesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /aeroplanes
  # GET /aeroplanes.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aeroplanes }
    end
  end

  # GET /aeroplanes/1
  # GET /aeroplanes/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aeroplane }
    end
  end

  # GET /aeroplanes/new
  # GET /aeroplanes/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aeroplane }
    end
  end

  # GET /aeroplanes/1/edit
  def edit
  end

  # POST /aeroplanes
  # POST /aeroplanes.json
  def create
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
    @aeroplane.destroy

    respond_to do |format|
      format.html { redirect_to aeroplanes_url }
      format.json { head :no_content }
    end
  end
end
