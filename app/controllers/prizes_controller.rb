class PrizesController < ApplicationController
  def index
    @prizes = Prize.all
  end

  def show
    @prize = Prize.find(params[:id])
  end

  def new
    @prize = Prize.new
  end

  def create
    @prize = Prize.new(prize_params)

    if @prize.save
      redirect_to @prize
    else
      render 'new'
    end
  end

  private

  def prize_params
    params.require(:prize).permit(:title, :text)
  end
end
