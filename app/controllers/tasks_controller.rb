class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:edit, :update, :destroy, :show]

  def index
     @tasks = current_user.tasks.order(created_at: :desc)
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      redirect_to tasks_path, notice: 'Task created successfully!'
    else
      @tasks = current_user.tasks.order(created_at: :desc)
      render :index
    end
  end

  def edit
  end

    def show
      @task = Task.find(params[:id])
    end


  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: 'Task updated successfully!'
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice: 'Task was successfully deleted.'
  end

  private

  def set_task
    @task = current_user.tasks.find(params[:id]) 
  end

  def task_params
    params.require(:task).permit(:title, :completed)
  end
end
