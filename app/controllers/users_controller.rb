class UsersController < ApplicationController
  # GET \users \:id
  def show
    # @user = User.first;
    @user = User.find(params[:id]);
    
    # => app/views/users/show.html.erb
  end

    # GET  /users/new or /signup
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      #  => Success
      flash[:success] = "Welcome to the Sample APP!"
      redirect_to @user # => GET /users/:id
      # redirect_to user_path(@user) # => GET /user/:id
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

    # Strong Parameters
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end 