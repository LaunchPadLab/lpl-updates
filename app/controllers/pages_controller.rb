class PagesController < ApplicationController
  def home
  	redirect_to company_path(current_company) if current_user
  end
end
