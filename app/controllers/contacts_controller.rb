class ContactsController < ApplicationController
    def new
        @contact = Contact.new # blank object
    end
    def create # saving
        @contact = Contact.new(contact_params) #succed from the form already here
        if @contact.save
            flash[:success] = "Message sent correctly."
            redirect_to new_contact_path
        else
            flash[:danger] = @contact.errors.full_messages.join(", ")
            redirect_to new_contact_path
        end
            
    end
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
end