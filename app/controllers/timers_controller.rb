# typed: false
require 'time'


class TimersController < ApplicationController


  def timer
    render tasks_path
  end

  def measure
    @task = 2
  end

  def stop
    @start_time = params[:task][:time]
    elapsed_sec = Time.now - Time.parse(@start_time)
    elapsed_min = elapsed_sec/60 #時間（min）
    Task.where(id: params[:task][:id]).update(actual_time: elapsed_min) #計測した時間とステータスの変更
    session[:tab] = 1
    redirect_to tasks_path
  end

  def stop
    @start_time = params[:task][:time]
    elapsed_sec = Time.now - Time.parse(@start_time)
    elapsed_min = elapsed_sec/60 #時間（min）
    Task.where(id: params[:task][:id]).update(actual_time: elapsed_min) #計測した時間とステータスの変更
    session[:tab] = 1
    redirect_to tasks_path
  end
end