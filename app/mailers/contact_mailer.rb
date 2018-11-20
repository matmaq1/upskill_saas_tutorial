class ContactMailer < ActionMailer::Base
  default to:'matmaq1@gmail.com'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject:'Test')
  end
    
end