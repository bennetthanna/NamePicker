class ContestantsController < ApplicationController
  def new
    @contestant = Contestant.new
    @prizes = Prize.all
  end
end
