class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @company = current_user.company
    @machines = current_user.machines
  end
end
