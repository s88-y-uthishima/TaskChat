class CardController < ApplicationController
  def new
    @card = Card.new
    @task = Task.find(params[:task_id])
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to :root
    else
      render :new
    end
  end

  private
  def card_params
    params.require(:card).permit(:title, :memo, :task_id)
  end
end
