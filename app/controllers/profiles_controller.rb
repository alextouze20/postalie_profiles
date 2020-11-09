class ProfilesController < ApplicationController
  def show
      @profile = Profile.find(params[:id])
  end

  def new
      @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.save
    if @profile.save
      redirect_to "https://hook.integromat.com/0cj8ax661l4whsojh3xjex866ecyqplq?id=#{@profile.id}"
    else
      render :new
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:fullname, :photo)
  end
end
