class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    if @user.save
      redirect_to users_path, notice: "Usuário criado com sucesso."
    else
      puts @user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      # redirect_to @user, notice: "Usuário atualizado com sucesso."
      redirect_to users_path, notice: "Usuário atualizado com sucesso."
      return
    end

    render :edit
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: "Usuário deletado com sucesso."
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
