class ProfilesController < ApplicationController

	def edit
		@profile = Profile.find_by user_id: current_user.id
	end
	
	def update 
		@profile = Profile.find(:params[:id])
		if @profile.update_attributes(params_profile)
			redirect_to(pages_path)
		else
			render('edit')
		end
	end

	def params_profile
		params.require(:profile).permit(:first_name,:last_name,:address,:image)
	end

end
