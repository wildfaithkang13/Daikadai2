class NoticeMailer < ApplicationMailer
  def sendmail_blog(instagram)
    @instagram = instagram

    mail to: @instagram.user.email,
         subject: '写真が投稿されました。'
  end
end
