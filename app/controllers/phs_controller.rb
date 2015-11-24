class PhsController < ApplicationController

  def index
    @stats= Ph.all
  end

  def create
    @ph = Ph.new(ph_params)
    if @ph.save
      redirect_to "/"
    else
      @stats= Ph.all
      puts @ph.errors
      render :index
    end
  end

  def new
  end


  def show
    @stats= Ph.all
  end


  def edit
    @ph = Ph.find(params[:id])
  end

  def update
    @ph = Ph.find(params[:id])
    @ph.reading = params[:reading]
    @ph.mood = params[:mood]
    if @ph.save
      redirect_to "/"
    else
      render "/stats/edit"
    end
  end

  def delete
    @ph = Ph.find(params[:id])
    @ph.destroy
    redirect_to "/"
  end


  private

  def ph_params
    params.require(:ph).permit(:reading, :mood, :hangry)
  end

end
