class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.report.subject
  #
  default from: "tomo.k9090@aaa.com"
  def report

    @greeting = "Hi"


    # 送信先メールアドレスとメールの件名
    mail to: "tomo.k9090@gmail.com",
    subject: "welcome to example.com"
  end
end
