class TasksController < ApplicationController
  before_action :require_logged_in
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def mypage
    @user = current_user
  end

  def index
    today = "#{DateTime.now.year}/#{DateTime.now.month}/#{DateTime.now.day}"
    @user = current_user
    @task = Task.new
    @tasks_future = Task.where(user_id: @user.id, action_date: nil).order(:status, :created_at)
    @tasks_past = Task.where(user_id: @user.id).where.not(action_date: [nil, today]).order(action_date: :desc)
    @tasks_todo = Task.where(user_id: @user.id, status: 0, action_date: today).order(:created_at)
    @tasks_done = Task.where(user_id: @user.id, status: 2, action_date: today).order(:created_at)
  end

  def show

  end


  def new
    @task = Task.new
  end

  def create
    @task = current_user.task.build(task_params)
    if @task.save
      flash[:success] = "タスクを追加しました"
      session[:tab] = 1
      redirect_to tasks_path
    else
      flash.now[:danger] = "登録できませんでした"
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      flash[:success] = "更新できました"
      redirect_to tasks_path
    else
      flash.now[:danger] = "更新できませんでした"
      render :edit
    end
  end

  def destroy
    @task.destroy
    flash[:success] = "削除完了"
    redirect_to tasks_path
  end

  def change_status
    status_num = params[:task][:status].to_i
    case status_num
    
    when 0
      next_status = 2
      @user = current_user
      @task = Task.find(params[:task][:id].to_i)
      Task.where(id: params[:task][:id]).update(status: next_status)
      render "timers/measure"
      # redirect_back(fallback_location: tasks_path)
      # render :index
      # index
    # when 1
    #   next_status = 2
    #   Task.where(id: params[:task][:id]).update(status: next_status)
    #   redirect_back(fallback_location: tasks_path)
    when 2
      next_status = 0
      Task.where(id: params[:task][:id]).update(status: next_status)
      redirect_back(fallback_location: tasks_path)
    end
  end

  def today_task_changed
    task_id = params[:task_today][:id]
    action_date = params[:task_today][:action_date]
    if action_date == ""
      today = "#{DateTime.now.year}/#{DateTime.now.month}/#{DateTime.now.day}"
      Task.where(id: task_id).update(action_date: today)
      session[:tab] = 2
    else
      Task.where(id: task_id).update(action_date: "")
      session[:tab] = 1
    end
    redirect_to tasks_path
  end

  def done_destroy
    Task.where(status: 2).destroy_all
    flash[:success] = "Doneの削除完了"
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:task_name, :estimated_time, :status, :id, :action_date)
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def correct_user
    unless @task.user_id == current_user.id
      redirect_to tasks_path
    end
  end
end
