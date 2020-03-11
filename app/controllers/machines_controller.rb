class MachinesController < ApplicationController
  # before_action :move_to_top

  def index
    @machines = Machine.all
  end

  def new
    @machine = Machine.new
  end

  def create
    Machine.create(machine_params)
    # redirect_to "/views/machines/post-end" 

  end


  private
  def machine_params
    params.require(:machine).permit(:category, :model, :made, :engineer, :image)
    # .merge(user_id: current_user.id)
  end



  # def move_to_top
  #   redirect_to: 'home#top' unless user_signed_in?
  # end
end