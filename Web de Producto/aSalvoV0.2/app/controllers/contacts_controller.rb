class ContactsController < ApplicationController
  def index

  end
  def new
    @user=User.find(params[:user_id])
    @contact=@user.contacts.build
  end
  def create
    @user=User.find(params[:user_id])
    @contact=@user.contacts.build(contact_params)
    if @contact.save
      flash[:notice]="Se ha creado el contacto"
      redirect_to @user
    else
      flash[:error]="No se ha creado el contacto"
      render action:"new"
    end
  end
  def show
    @user=User.find(params[:user_id])
    @contact=@user.contacts.find(params[:id])
  end
  def edit

  end
  def update

  end
  def destroy
  end
  private
    def contact_params
      params.require(:contact).permit(:contacto_nombre,:contacto_cel,:contacto_mail)
    end
end
