class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_mail.subject
  #
  def contact_mail(contact)
    @contact = contact
    @greeting = "Hi"

    mail to: "h.9.19taka@gmail.com"
  end
end
