class UsersController < ApplicationController
  # before_action :authenticate_user!,only: :show
  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end

  # private
  # def user_params
  #   params.require(:user).permit(:name, :profile, :occupation, :position).marge(user_id: current_user.id)
  # end
end
