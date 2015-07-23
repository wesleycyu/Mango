class UserMailer < ApplicationMailer
  default from: 'notifcations@rottenmangoes.com'

  def deletion_email(user)
    @user = user
    mail(to: @user.email, subject: "Your Account has been deleted")
  end

end
