class UsersController < ApplicationController

	def index
		@users = User.all
	end


	def new
		@user = User.new
	end


	def create
		@user = User.new(params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation))

		if @user.save
			session[:user_id] = @user.id.to_s
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

		if @user.update_attributes(parmas.requre(:user).permit(:fname, :lname, :email, :password, :password_confirmation))
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

    private
    def users_params
    	params.require(:user).permit(:image,:fname, :lname, :email, :password, :password_confirmation)

    end

end