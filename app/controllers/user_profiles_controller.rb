class UserProfilesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource :only => [:index, :show, :edit, :create, :update, :destroy]

  # GET /user_profiles
  # GET /user_profiles.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_profiles }
    end
  end

  # GET /user_profiles/1
  # GET /user_profiles/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_profile }
    end
  end

  # GET /user_profiles/new
  # GET /user_profiles/new.json
  def new
    authorize! :new, UserProfile, :message => 'A profile already exists for this user.'
    @user_profile = UserProfile.new
    @user_profile.build_airline

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_profile }
    end
  end

  # GET /user_profiles/1/edit
  def edit
  end

  # POST /user_profiles
  # POST /user_profiles.json
  def create
    respond_to do |format|
      if @user_profile.save
        format.html { redirect_to @user_profile, notice: 'User profile was successfully created.' }
        format.json { render json: @user_profile, status: :created, location: @user_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @user_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_profiles/1
  # PUT /user_profiles/1.json
  def update
    respond_to do |format|
      if @user_profile.update_attributes(params[:user_profile])
        format.html { redirect_to @user_profile, notice: 'User profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_profiles/1
  # DELETE /user_profiles/1.json
  def destroy
    @user_profile.destroy

    respond_to do |format|
      format.html { redirect_to user_profiles_url }
      format.json { head :no_content }
    end
  end
end
