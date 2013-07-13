class LifeJacketAgesController < ApplicationController
  # GET /life_jacket_ages
  # GET /life_jacket_ages.json
  def index
    @life_jacket_ages = LifeJacketAge.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @life_jacket_ages }
    end
  end

  # GET /life_jacket_ages/1
  # GET /life_jacket_ages/1.json
  def show
    @life_jacket_age = LifeJacketAge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @life_jacket_age }
    end
  end

  # GET /life_jacket_ages/new
  # GET /life_jacket_ages/new.json
  def new
    @life_jacket_age = LifeJacketAge.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @life_jacket_age }
    end
  end

  # GET /life_jacket_ages/1/edit
  def edit
    @life_jacket_age = LifeJacketAge.find(params[:id])
  end

  # POST /life_jacket_ages
  # POST /life_jacket_ages.json
  def create
    @life_jacket_age = LifeJacketAge.new(params[:life_jacket_age])

    respond_to do |format|
      if @life_jacket_age.save
        format.html { redirect_to @life_jacket_age, notice: 'Life jacket age was successfully created.' }
        format.json { render json: @life_jacket_age, status: :created, location: @life_jacket_age }
      else
        format.html { render action: "new" }
        format.json { render json: @life_jacket_age.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /life_jacket_ages/1
  # PUT /life_jacket_ages/1.json
  def update
    @life_jacket_age = LifeJacketAge.find(params[:id])

    respond_to do |format|
      if @life_jacket_age.update_attributes(params[:life_jacket_age])
        format.html { redirect_to @life_jacket_age, notice: 'Life jacket age was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @life_jacket_age.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /life_jacket_ages/1
  # DELETE /life_jacket_ages/1.json
  def destroy
    @life_jacket_age = LifeJacketAge.find(params[:id])
    @life_jacket_age.destroy

    respond_to do |format|
      format.html { redirect_to life_jacket_ages_url }
      format.json { head :no_content }
    end
  end
end
