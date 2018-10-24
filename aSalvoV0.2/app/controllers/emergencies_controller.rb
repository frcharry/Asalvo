class EmergenciesController < ApplicationController
  def index

  end
  def new
    @user=User.find(params[:user_id])
    @user.entities.new
    @emergency=@user.emergencies.build
  end
  def create
    @user=User.find(params[:user_id])
    @emergency=Emergency.new(emergency_params)
    if @emergency.save
      @user.emergency << @emergency #realiza la asignaciòn utiliz
      flash[:notice]="Se ha creado la emergencia"
      redirect_to @user
    else
      flash[:error]="No se ha creado emergencia"
      render action:"new"
    end
  end
  def show
    @user=User.find(params[:user_id])
    @emergency=@user.emergencies.find(params[:id])
  end
  def edit

  end
  def update

  end
  def destroy

  end
  private
  def emergency_params
    params.require(:emergency).permit(:emergencia_fecha,:emergencia_ubicacion,:emergencia_data)
  end
end
