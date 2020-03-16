class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @company = user.company
    @email = user.email
    @url = user.url
    @machines = user.machines
  end
end

# class UsersController < ApplicationController
  # def show
    # @company= current_user.company
    # @machines = current_user.machines
  # end
# end

