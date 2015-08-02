class ProfileController < ApplicationController
  def show
  	@user = User.find_by_username(params[:id])
  	if @user
  		@statuses = @user.statuses.all
  	else
  		render file:'public/404',status:404,formats:[:html]
  	end
  end

  def profile_params
      params.require(:profile).permit(:id)
    end
end
