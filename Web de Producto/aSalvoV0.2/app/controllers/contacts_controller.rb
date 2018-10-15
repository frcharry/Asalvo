class ContactsController < ApplicationController
  def index
    @contact=Contact.all
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
    @contact=Contact.find(params[:id])
  end
  def edit
    @contact=Contact.find(params[:id])
  end
  def update
    @contact=Contact.find(params[:id])
    if @contact.update(contact_params)
      flash[:notice]="Se ha actualizado el contacto."
      redirect_to @contact
    else
      flash[:error]="No se ha editado el contacto"
      render action: "edit"
    end
  end
  def destroy
    @contact=Contact.find(params[:id])
    @contact.destroy
    flash[:notice]= "El contacto se ha eliminado."
    redirect_to contacts_path
  end
  private
    def contact_params
      params.require(:contact).permit(:contacto_nombre,:contacto_cel,:contacto_mail)
    end
end
