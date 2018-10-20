class EmergenciesController < ApplicationController
  def index

  end
  def new
    @user=User.find(params[:user_id])
    @emergency=@user.emergencies.build
  end
  def create

  end
  def show

  end
  def edit

  end
  def update

  end
  def destroy

  end
end
