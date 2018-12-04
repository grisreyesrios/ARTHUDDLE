class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user

    mail(to: @user.email, subject: 'Welcome to Arthuddle!')
  end

  def creation_confirmation(workshop)
    @workshop = workshop

    mail(
      to: @workshop.user.email,
      subject: "Workshop #{@workshop.name} created!"
      )
  end
end
