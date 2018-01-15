class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:edit, :update]
	before_action :check_autorization, only: [:edit, :update]
	before_action :find_user


	def show
	end

	def edit
	end

	def update
		if @user.update(user_params)
				redirect_to @user
			else
				render 'edit'	
		end		
	end

	def find_user		
		@user = User.find(params[:id])
	end

	private def user_params
	params.require(:user).permit(:avatar)
	end

	private def check_autorization
		unless current_user.id == params[:id].to_i
			redirect_to root_url			
		end
	end

end
