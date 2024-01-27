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
    # => app/views/users/new.html.erb
  end
end
