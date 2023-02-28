class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end

  private

  def prototype_params
    params.require(:user).permit(:name, :profile, :occuupation, :position).merge(user_id: current_user.id)
  end
end
