class UsersController < ApplicationController
  def show
    # @user = User.first;
    @user = User.find(params[:id]);
  end

  def new
    # => app/views/users/new.html.erb
  end
end
