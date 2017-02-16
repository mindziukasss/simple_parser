class EmailController < ApplicationController
  before_action :authenticate_user!

  def email_list
    @emails = Email.all.order("created_at DESC").page params[:page]
    if params[:search]
        @emails = Email.search(params[:search]).order("created_at DESC")
      else
        @email = Email.all.order("created_at DESC")
      end
  end

end