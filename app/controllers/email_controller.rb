class EmailController < ApplicationController

  def email_list
    @emails = Email.all.order("created_at DESC")
    if params[:search]
        @emails = Email.search(params[:search]).order("created_at DESC")
      else
        @email = Email.all.order("created_at DESC")
      end
  end

end