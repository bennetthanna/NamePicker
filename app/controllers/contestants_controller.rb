class ContestantsController < ApplicationController
  def show
    @contestant = Contestant.find(params[:id])
  end

  def new
    @contestant = Contestant.new
    @prizes = Prize.all
  end

  def create
    # render plain: params[:prize_ids].inspect
    # prize_ids = params[:prize_ids]
    # contestant_name = params[:contestant]
    @contestant = Contestant.new(contestant_params)
    @contestant.prize_ids = params[:prize_ids]

    @contestant.save
    redirect_to @contestant
  end

  private

  def contestant_params
    params.require(:contestant).permit(:name)
  end
end
