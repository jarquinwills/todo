class TasksController < ApplicationController

  def index
    render json: Task.order(:id)
  end

  def update
    task = Task.find(params[:id])
    task.update_attributes(tasks_params)
    render json: task
  end

  private 

  def tasks_params
    params.require(:task).permit(:done)
  end

end
