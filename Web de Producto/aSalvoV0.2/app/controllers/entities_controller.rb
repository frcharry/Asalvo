class EntitiesController < ApplicationController
  def index
    @entity=Entity.all
  end
  def new
    @entity=Entity.new
  end
  def create
    @entity=Entity.new(entity_params)
    if @entity.save
      flash[:notice]="Se ha creado la entidad"
      redirect_to @entity
    else
      flash[:error]="No se ha creado la entidad"
      render action:"new"
    end
  end
  def show
    @entity=Entity.find(params[:id])
  end
  def edit
    @entity=Entity.find(params[:id])
  end
  def update
    @entity = Entity.find(params[:id])
    if @entity.update(entity_params)
      flash[:notice]="Se ha actualizado la entidad"
      redirect_to @entity
    else
      flash[:error]="No se ha actualizado la entidad"
      render action: "edit"
    end
  end
  def destroy
    @entity=Entity.find(params[:id])
    @entity.destroy
    flash[:notice]= "La entidad se ha eliminado"
    redirect_to entities_path
  end
  private
    def entity_params
      params.require(:entity).permit(:entidad_nombre,:entidad_representante,:entidad_tel,:entidad_email,:entidad_dir,:password_digest)
    end
end
