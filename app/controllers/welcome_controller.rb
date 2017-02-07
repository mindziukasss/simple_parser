class WelcomeController < ApplicationController

  def home
  	@emails = Email.all
  	@text = "This you text" 
  end

  def parse
  	@text = params[:text]
  	EmailsParser.parse_emails(@text)
  	redirect_to root_path
	end


  def about
  end

end
