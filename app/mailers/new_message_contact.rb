class NewMessageContact < ApplicationMailer
  def newMessage(contact)
    @contact = contact
    mail to: 'joser.chirivella@gmail.com',
        from: @contact.email,
        subject: 'New Message from ' + @contact.name
  end
end
