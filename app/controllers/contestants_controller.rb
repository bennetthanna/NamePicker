class ContestantsController < ApplicationController
  def new
    @contestant = Contestant.new
    @prizes = Prize.all
  end

  def create
    render plain: params[:prize_ids].inspect
  end
end
