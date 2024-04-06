class TasksController < ApplicationController
  before_action :require_logged_in
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def mypage
    @user = current_user
  end

  def index
    today = "#{Time.zone.now.year}/#{Time.zone.now.month}/#{Time.zone.now.day}"
    @user = current_user
    @task = Task.new
    @tasks_future = Task.where(user_id: @user.id, action_date: nil).order(:status, :created_at)
    @tasks_past = Task.where(user_id: @user.id).where.not(action_date: [nil, today]).order(action_date: :desc)
    @tasks_todo = Task.where(user_id: @user.id, status: 0, action_date: today).order(:created_at)
    @tasks_progress = Task.where(user_id: @user.id, status: 1, action_date: today).order(:created_at)
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
    if params[:task].present?
      session[:task_params] = params[:task].permit(:id, :status).to_h
      @task = Task.find(session[:task_params]["id"].to_i)
    elsif session[:task_params].present?
      @task = Task.find(session[:task_params]["id"].to_i)
    else
      # セッションにもparamsにもデータがない場合は、ユーザーを適切なページにリダイレクトする
      flash[:danger] = "タスク情報が見つかりません。"
      redirect_to tasks_path and return
    end

    status_num = session[:task_params]["status"].to_i

    case status_num
    when 0, 1
      @user = current_user
      render "timers/measure"
    when 2
      next_status = 0
      @task.update(status: next_status)
      redirect_back(fallback_location: tasks_path)
    else
      flash[:danger] = "無効なステータス値です。"
      redirect_to tasks_path
    end
  end

  def today_task_changed
    task_id = params[:task_today][:id]
    action_date = params[:task_today][:action_date]
    if action_date == ""
      today = "#{Time.zone.now.year}/#{Time.zone.now.month}/#{Time.zone.now.day}"
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
