class WelcomeController < ApplicationController
  def index
    @user = User.new
  end
  
  def new
    
  end

  def show
    @user = User.find(params[:id])
  end
    
  def create
    @user = User.new(user_params)
        
    if @user.save
        flash[:success] = "Welcome Aboard, Matey!"
        redirect_to @user
    else
        render 'new'
    end
  end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    
  
end
