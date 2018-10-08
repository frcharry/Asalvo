class UsersController < ApplicationController
  def index
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
  end
  def edit
  end
  def update
  end
  def destroy
  end
  private
    def user_params
      params.require(:user).permit(:usuario_nombre,:usuario_apellido,:usuario_mail,:usuario_cel,:usuario_sexo,:usuario_fechaNacimiento,:usuario_ubicacion,:password_digest)
    end
end
