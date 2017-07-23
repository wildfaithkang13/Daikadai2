class NoticeMailer < ApplicationMailer
  def sendmail_blog(instagram)
    @instagram = instagram

    mail to: @instagram.user.email,
         subject: '投稿されました。'
  end
end
