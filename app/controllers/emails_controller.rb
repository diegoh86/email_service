class EmailsController < ApplicationController
  def send_email

    email_obj = {}
    email_obj[:nome] = params[:nome]
    email_obj[:email] = params[:email]
    email_obj[:telefone] = params[:telefone]
    email_obj[:empresa] = params[:empresa]
    email_obj[:mensagem] = params[:mensagem]

    ContactMailer.contact_email(email_obj).deliver_now
    render json: { message: 'Email enviado com sucesso' }
  end
end
