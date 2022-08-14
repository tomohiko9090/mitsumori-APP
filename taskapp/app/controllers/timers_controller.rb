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
    p Time.parse(@start_time)
    p Time.now
    elapsed_sec = Time.now - Time.parse(@start_time)
    elapsed_min = elapsed_sec/60 #時間（min）
    Task.where(id: params[:task][:id]).update(end_time: elapsed_min, status: 2) #計測した時間とステータスの変更
    redirect_to tasks_path
  end
end
