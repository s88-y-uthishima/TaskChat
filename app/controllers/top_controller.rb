class TopController < ApplicationController


  def index
    @tasks = Task.where(user: current_user).order("created_at ASC")
    @messages = Message.all
  end
end
