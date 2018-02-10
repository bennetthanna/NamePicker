class ContestantsController < ApplicationController
  def new
    @contestant = Contestant.new
  end
end
