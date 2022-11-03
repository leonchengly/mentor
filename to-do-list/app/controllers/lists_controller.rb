class ListsController < ApplicationController
  before_action :set_task, only: %i[new create]

  def new
    @task = Task.find(params[:task_id])
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.task = @task
    if @list.save
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to task_path(@list.task)
  end

  private

  def set_task
    @task = Task.find(params[:task_id])
  end

  def list_params
    params.require(:list).permit(:description)
  end
end
