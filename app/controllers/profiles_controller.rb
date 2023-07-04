class ProfilesController < ApplicationController
    before_action :set_profile, only: [:show, :edit, :update, :destroy]
  
    def index
      @profiles = Profile.all
      render json: @profiles
    end
  
    def show
      render json: @profile
    end
  
    def new
      @profile = Profile.new
      render json: @profile
    end
  
    def create
      @profile = Profile.new(profile_params)
      if @profile.save
        render json: @profile, status: :created
      else
        render json: @profile.errors, status: :unprocessable_entity
      end
    end
  
    def edit
      render json: @profile
    end
  
    def update
      if @profile.update(profile_params)
        render json: @profile
      else
        render json: @profile.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @profile.destroy
      render json: { message: 'Profile deleted successfully' }
    end
  
    private
  
    def set_profile
      @profile = Profile.find(params[:id])
    end
  
    def profile_params
      params.require(:profile).permit(:user_id, :username, :email, :password, :image)
    end
  end
  
