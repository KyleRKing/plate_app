class UsersController < ApplicationController

	def new
		@user = User.new
	end


	def create
		@user = User.new(params.require(:user).permit(:fname, :lname, :email, :password))

		if @user.save
			redirect_to users_path
		else
			render :new
		end
	end


	def edit
		@user = User.find(params[:id])
	end


	def update
		@user = User.find(params[:id])

		if @user.update_attributes(parmas.requre(:user).permit(:fname, :lname, :email, :password))
			redirect_to users_path
		else
			render :edit
		end
	end


    def destroy
         @user = User.find(params[:id])
         @user.destroy
         redirect_to users_path
    end

end