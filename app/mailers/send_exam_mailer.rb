class SendExamMailer < ApplicationMailer
  default :from => "ADDR"

  def send_exam(addr)
    mail(to: addr, cc: "ADDR", subject: "SUBJECT")
  end
end
