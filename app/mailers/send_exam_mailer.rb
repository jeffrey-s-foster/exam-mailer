class SendExamMailer < ApplicationMailer
  default :from => Rails.configuration.exam_mailer[:from]

  def send_exam(addr)
    attachments[Rails.configuration.exam_mailer[:attachment_name]] = File.read(Rails.configuration.exam_mailer[:attachment_path])
    mail(to: addr,
         cc: Rails.configuration.exam_mailer[:from],
         subject: Rails.configuration.exam_mailer[:subject])
  end
end
