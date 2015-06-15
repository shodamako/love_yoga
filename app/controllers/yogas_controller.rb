class YogasController < ApplicationController
  before_action :set_yoga, only: [:show, :edit, :update]

def show
  end

  def index
    @yoga = Yoga.all
  end

  def new
    @yoga = Yoga.new
  end

  def create
    @yoga = Yoga.new(yoga_params)
    @yoga.save
    redirect_to "/yogas/#{@yoga.id}"
  end

  def edit
  end

  def update
    @yoga.update_attributes(post_params)
    redirect_to "/yogas/#{@yoga.id}"
  end

  private

  def yoga_params
    params.require(:yoga).permit(
      :name,
      :age
      )
  end

  def set_yoga
    @yoga = Yoga.find(params[:id])
  end

end
