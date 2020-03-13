class MachinesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  
  def index
    @machines = Machine.includes(:user)
    @users = User.all
  end

  def new
    @machine = Machine.new
  end

  def create
    Machine.create(machine_params)
  end

  def destroy
    machine = Machine.find(params[:id])
    machine.destroy
  end

  def edit
    @machine = Machine.find(params[:id])
  end

  def update
    machine = Machine.find(params[:id])
    machine.update(machine_params)
  end

  def show
    @machine = Machine.find(params[:id])
    @user = User.find(params[:id])
  end

  private
  def machine_params
    params.require(:machine).permit(:category, :model, :made, :engineer, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to '/' unless user_signed_in?
  end
end