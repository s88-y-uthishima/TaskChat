class CardController < ApplicationController
  def new
    @card = Card.new
    @task = Task.find(params[:task_id])
  end

  def create
    
  end
end
