class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
# GET /users
# GET /users.json
  def index
    @users = User.all
  end
# GET /users/1
# GET /users/1.json
  def show
    @user = User.find_by_id(params[:id])
  end
# GET /users/new
  def new
    @user = User.new
  end
# GET /users/1/edit
  def edit
  end
# POST /users
# POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User was successfully created."
#      redirect_to users_registered
    else
      flash[:notice] = "There was a problem creating you."
      render :action => :new
    end
  end
# PATCH/PUT /users/1
# PATCH/PUT /users/1.json
  def update
      @user = User.find_by_id(params[:id])
      @user.update_attributes(user_params)
      flash[:success] = "Done!"
      redirect_to admin_users_path

  end
# DELETE /users/1
# DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
# Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end
# Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:login, :password, :role, :crypted_password, :password_salt, :persistence_token, :password_digest)
  end
end