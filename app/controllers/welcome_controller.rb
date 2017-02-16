class WelcomeController < ApplicationController
  before_action :authenticate_user!, except: [:about]

  def home
    @emails = Email.all.page params[:page]
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
