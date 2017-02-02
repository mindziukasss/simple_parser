class EmailController < ApplicationController

  def email_list
    @emails = Email.all
  end

end