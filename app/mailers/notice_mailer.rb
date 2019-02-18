class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  # default from: "good.job0312@gmail.com"

  default from: "test@example.com"

  def sendmail_confirm(comment)
    @comment = comment
    mail(
      subject: "新しいコメントが投稿されました",
      to: "admin@example.com"
    )do |format|
    format.text
    end
  end
end
