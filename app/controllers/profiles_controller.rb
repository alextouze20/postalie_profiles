class ProfilesController < ApplicationController
  def index
    @profiles = policy_scope(Profile)
  end

  def show
      @profile = Profile.find(params[:id])
      authorize @profile
  end

  def new
      @profile = Profile.new
      authorize @profile
  end

  def create
    @profile = Profile.new(profile_params)
    authorize @profile
    @profile.user_id = current_user.id
    uuid = UUID.new.generate
    @profile.address_code = uuid
    @profile.save
    if @profile.save
      redirect_to "https://hook.integromat.com/0cj8ax661l4whsojh3xjex866ecyqplq?id=#{@profile.id}"
    else
      render :new
    end
  end

  def edit
    @profile = Profile.find(params[:id])
    authorize @profile
  end

  def update
    @profile = Profile.find(params[:id])
    authorize @profile
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  def destroy
    @profile = Profile.find(params[:id])
    authorize @profile
    @profile.destroy
    redirect_to profiles_path
  end

  private

  def profile_params
    params.require(:profile).permit(:firstname, :lastname, :photo, :bio, :dob, :address_street1, :address_street2, :address_city, :address_country, :address_zip, :address_province, :public, :address_code, :user_id)
  end
end
