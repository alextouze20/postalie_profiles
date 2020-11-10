class ProfilesController < ApplicationController
  def show
      @profile = Profile.find(params[:id])
  end

  def new
      @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
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

  private

  def profile_params
    params.require(:profile).permit(:fullname, :photo, :bio, :dob, :address_street1, :address_street2, :address_country, :address_zip, :address_province, :public, :address_code, :user_id)
  end
end
