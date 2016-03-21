# coding: utf-8
class Notifications::PaymentMailer < ActionMailer::Base

  layout 'notifications/payment_mailer'

  default from: "Equipe do Meu Rio <financiador@meurio.org.br>", reply_to: "financiador@meurio.org.br"

  default_url_options[:host] = 'apoie.nossascidades.org'

  def created_payment_slip(id)
    @payment = Payment.find(id)
    @user = @payment.subscription.user
    mail(
      to: @payment.user.email,
      subject: "Seu boleto foi gerado!",
      from: @payment.subscription.organization.slug == "meurio" ? "financiador@meurio.org.br" : "anna@minhasampa.org.br"
    )
  end

  def created_payment_debit(id)
    @payment = Payment.find(id)
    @user = @payment.subscription.user
    mail(
      to: @payment.user.email,
      subject: "O link para a sua doação foi gerado!",
      from: @payment.subscription.organization.slug == "meurio" ? "financiador@meurio.org.br" : "anna@minhasampa.org.br"
    )
  end

  def processing_payment(id)
    @payment = Payment.find(id)
    @user = @payment.subscription.user
    mail(
      to: @payment.user.email,
      subject: "Seu pagamento está sendo processado!",
      from: @payment.subscription.organization.slug == "meurio" ? "financiador@meurio.org.br" : "anna@minhasampa.org.br"
    )
  end

  def authorized_payment(id)
    @payment = Payment.find(id)
    @user = @payment.subscription.user
    mail(
      to: @payment.user.email,
      subject: @payment.subscription.organization.slug == "meurio" ? "Que lindo, sua doação foi aprovada!": "Obrigada! Sua doação para o Minha Sampa foi realizada",
      from: @payment.subscription.organization.slug == "meurio" ? "financiador@meurio.org.br" : "anna@minhasampa.org.br"
    )
  end

  def cancelled_payment(id)
    @payment = Payment.find(id)
    @user = @payment.subscription.user
    mail(
      to: @payment.user.email,
      subject: "Oops, houve um problema com a sua doação",
      from: @payment.subscription.organization.slug == "meurio" ? "financiador@meurio.org.br" : "anna@minhasampa.org.br"
    )
  end
end
