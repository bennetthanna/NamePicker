class PrizesController < ApplicationController
  def new
  end

  def create
    render plain: params[:prize].inspect
  end
end
