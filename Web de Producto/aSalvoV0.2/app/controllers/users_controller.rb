class UsersController < ApplicationController
  def index
    @users=User.all
  end
  def new
    @user=User.new
  end
  def create
    @user = User.new(user_params)
      if @user.save
        flash[:notice]="Se ha creado el usuario."
        redirect_to @user
      else
        flash[:error]="No se ha creado el usuario."
        render action: "new"
      end
  end
  def show
    @user=User.find(params[:id])
  end
  def edit
    @user=User.find(params[:id])
  end
  def update
    @user=User.find(params[:id])
      if @user.update(user_params)
        flash[:notice]="Se ha actualizado el usuario"
        redirect_to @user
      else
        flash[:error]="No se ha actualizado el usuario"
        render action:"edit"
      end
  end
  def destroy
    @user=User.find(params[:id])
    @user.destroy
    flash[:notice]="El usuario se ha eliminado"
    redirect_to users_path
  end
  private
    def user_params
      params.require(:user).permit(:usuario_nombre,:usuario_apellido,:usuario_mail,:usuario_cel,:usuario_sexo,:usuario_fechaNacimiento,:usuario_ubicacion,:password_digest)
    end
end
