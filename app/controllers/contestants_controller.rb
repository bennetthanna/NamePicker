class ContestantsController < ApplicationController
  def index
    @contestants = Contestant.all
  end

  def show
    @contestant = Contestant.find(params[:id])
  end

  def new
    # @prizes = Prize.all
    @contestant = Contestant.new
  end

  def create
    # render plain: params[:prize_ids].inspect
    # prize_ids = params[:prize_ids]
    # contestant_name = params[:contestant]
    @contestant = Contestant.new(contestant_params)
    @contestant.prize_ids = params[:prize_ids]

    if @contestant.save
      redirect_to @contestant
    else
      render 'new'
    end
  end

  private

  def contestant_params
    params.require(:contestant).permit(:name)
  end
end
