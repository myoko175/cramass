class UsersController < ApplicationController
  def show
    @company= current_user.company
    @machines = current_user.machines
  end
  #   user = User.find(params[:id])
  #   @company = user.company
  #   @machines = user.machines
  # end
end