class MainController < ApplicationController
  def index
  end

  def send_exam
    SendExamMailer.send_exam(params[:email]).deliver
    @email = params[:email]
  end
end
