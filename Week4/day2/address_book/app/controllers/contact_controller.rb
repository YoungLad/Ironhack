class ContactController < ApplicationController
	def new
		render 'new'
	end

    def create
    @contacts = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone => params[:contact][:phone],
      :email => params[:contact][:email])

    	@contacts.save

    	redirect_to("/contacts")
  	end

  	def index

  		@contacts_arr = Contact.order(created_at: 'asc')
  		render 'index'
  	end
end