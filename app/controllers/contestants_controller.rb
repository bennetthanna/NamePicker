class ContestantsController < ApplicationController
  def index
    @contestants = Contestant.all
  end

  def show
    @contestant = Contestant.find(params[:id])
    @prizes = []
    @contestant.prize_ids.each do |prize_id|
      @prizes << Prize.find(prize_id).title
    end
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

  def destroy
    @contestant = Contestant.find(params[:id])
    @contestant.destroy

    redirect_to contestants_path
  end

  private

  def contestant_params
    params.require(:contestant).permit(:name)
  end
end
