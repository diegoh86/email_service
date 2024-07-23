class ContactMailer < ApplicationMailer
  def contact_email(params)

    txt_email = "Nome: #{params[:nome]}\nEmail: #{params[:email]}\nTelefone: #{params[:telefone]}\nEmpresa: #{params[:empresa]}\nMensagem: #{params[:mensagem]}"

    mail(to: ENV['CONTACT_EMAIL'], subject: 'Mensagem de contato do site', from: ENV['ZOHO_EMAIL'], reply_to: params[:email], body: txt_email)
  end
end
