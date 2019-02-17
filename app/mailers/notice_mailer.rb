class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  # default from: "good.job0312@gmail.com"

  # def send_confirm(comment)
  #   @comment = comment
  #   mail to: "fumiya.sugino@favy.co.jp",
  #   subject: "新しいコメントが投稿されました"
  # end

  default from: "test@example.com"

  def sendmail_confirm(comment)
    @comment = comment
    mail(
      subject: "新しいコメントが投稿されました",
      to: @comment
    )do |format|
    format.text
    end
  end
end
