class CardController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

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

  def show
  end

  def edit
  end

  def update
    if @card.update(card_params)
      redirect_to :root
    else
      render :edit
    end
  end

  def destroy
    
  end

  private
  def card_params
    params.require(:card).permit(:title, :memo, :task_id)
  end

  def set_card
    @card = Card.find(params[:id])
  end
end
