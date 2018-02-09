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

  def edit
    @prize = Prize.find(params[:id])
  end

  def create
    @prize = Prize.new(prize_params)

    if @prize.save
      redirect_to @prize
    else
      render 'new'
    end
  end

  def update
    @prize = Prize.find(params[:id])

    if @prize.update(prize_params)
      redirect_to @prize
    else
      render 'edit'
    end
  end

  def destroy
    @prize = Prize.find(params[:id])
    @prize.destroy

    redirect_to prizes_path
  end

  private

  def prize_params
    params.require(:prize).permit(:title, :text)
  end
end
