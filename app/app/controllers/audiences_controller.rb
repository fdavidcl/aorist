class AudiencesController < ApplicationController
  layout "with_side", except: [:index]

  private
  def audience_params
    params.require(:audience).permit(:nombre, :descripcion)
  end

  public
  def new
    @audiences = Audience.all
    @audience = Audience.new
  end

  def create
    @audience = Audience.new audience_params

    if @audience.save
      redirect_to @audience
    else
      render :new
    end
  end

  def show
    @audiences = Audience.all
    @audience = Audience.find_by id: params[:id]
  end

  def index
    @audiences = Audience.all
  end

  def destroy
    @audience = Audience.find_by id: params[:id]
    @audience.destroy

    redirect_to audiences_path
  end

end
