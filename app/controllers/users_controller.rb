class UsersController < ApplicationController

	def new
	end

	def create
		@user = User.new(name: params[:name], email: params[:email], password_digest: params[:password])
		if @user.save
			redirect_to new_user_path
		else
			render :new
		end
	end

end
