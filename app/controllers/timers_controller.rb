require 'time'


class TimersController < ApplicationController

  def timer
    render tasks_path
  end

  def measure
  end

  def stop
    @start_time = params[:task][:time]
    elapsed_sec = Time.now - Time.parse(@start_time)
    elapsed_min = elapsed_sec / 60 #時間（min）

    total_time = Task.find(params[:task][:id]).actual_time.to_i + elapsed_min
    Task.where(id: params[:task][:id]).update(actual_time: total_time, status: params[:task][:status])
    session[:tab] = 1
    redirect_to tasks_path
  end
end
