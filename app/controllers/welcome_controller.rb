class WelcomeController < ApplicationController
  def home
  	 @text = "This you text" 
  end

  def parse
  	@text = params[:text]
  	render :home
  end

end
