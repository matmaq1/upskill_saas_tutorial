class ContactsController < ApplicationController
    def new
        @contact = Contact.new # blank object
    end
    def create # saving
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to new_contact_path, notice: "Message sent."
        else
            redirect_to new_contact_path, notice: "Error"
        end
            
    end
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
end