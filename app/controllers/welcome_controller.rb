class WelcomeController < ApplicationController

  def home
  	@emails = Email.all
  	@text = "This you text" 
  end

  def parse
  	@text = params[:text]
  	@emails = EmailsParser.parse_emails(@text)
  	redirect_to root_path
	end

end
