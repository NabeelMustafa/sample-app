class BudgetMailer < ApplicationMailer
  def budget_email(contact)
    @budget = contact
    # Destinatário definido em config/{environment}.rb
    #ActionMailer::Base.mail(from: "claudineyveloso@gmail.com", to: 'claudineyveloso@gmail.com', subject: 'Envio de email', body: "Test").deliver_now
    mail(to: 'eventos@033rooftop.com.br, SAC@033rooftop.com.br, SAC@teatrosantander.com.br, eventos@teatrosantander.com.br, marcelo.demetrius@teatrosantander.com.br' , subject: 'Orçamento - 033Rooftop Santander',
      reply_to: @budget.email, from: "033Rooftop Santander<santanderteatro@gmail.com>")
  end

end

