class ContestantsController < ApplicationController
  def index
    @contestants = Contestant.all
  end

  def show
    @contestant = Contestant.find(params[:id])
  end

  def new
    @contestant = Contestant.new
  end

  def edit
    @contestant = Contestant.find(params[:id])
  end

  def create
    @contestant = Contestant.new(contestant_params)
    @contestant.prize_ids = params[:prize_ids]

    if @contestant.save
      redirect_to @contestant
    else
      render 'new'
    end
  end

  def update
    @contestant = Contestant.find(params[:id])
    @contestant.prize_ids = params[:prize_ids]

    if @contestant.update(contestant_params)
      redirect_to @contestant
    else
      render 'edit'
    end
  end

  private

  def contestant_params
    params.require(:contestant).permit(:name)
  end
end
