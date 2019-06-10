class ContactMailer < ApplicationMailer
  def contact_email(contact)
    @contact = contact
    # Destinatário definido em config/{environment}.rb
    mail(to: @contact.subject.email_redirection , subject: 'Contato - 033Rooftop Santander',
      reply_to: @contact.email, from: "033Rooftop Santander<teatrosantander033rooftop@gmail.com>")
  end

end

