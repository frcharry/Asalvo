class ContactsController < ApplicationController
  def index
    @user=User.find(params[:user_id])
    @contact=@user.contacts.all
  end
  def new
    @user=User.find(params[:user_id])
    @contact=@user.contacts.build #prepara la variable para recibir los datos del formulario New Contact
  end
  def create
    @user=User.find(params[:user_id])
    @contact=Contact.new(contact_params) #crea el objeto con los parámetros permitidos.
    if @contact.save
      @user.contacts << @contact #realiza la asignaciòn utilizando el has and belongs to many
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
