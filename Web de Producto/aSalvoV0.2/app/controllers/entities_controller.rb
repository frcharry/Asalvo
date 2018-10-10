class EntitiesController < ApplicationController
  def index
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
  end
  def edit
  end
  def update
  end
  private
    def entity_params
      params.require(:entity).permit(:entidad_nombre,:entidad_representante,:entidad_tel,:entidad_email,:entidad_dir,:password_digest)
    end
end
