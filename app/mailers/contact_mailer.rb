class ContactMailer < ApplicationMailer
  def contact_mail(picture)
    @picture = picture

    mail to: @picture.user.email, subject: "投稿確認メール"
  end
end
