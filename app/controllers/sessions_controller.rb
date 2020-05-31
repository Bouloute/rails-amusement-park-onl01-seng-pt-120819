class SessionsController < ApplicationController
  def new
    
  end

  def create
    binding.pry
      name = params[:name]
      if !name || name.empty?
        redirect_to '/login'
      else 
        session[:user_id] = params[:name]
        redirect_to '/'
      end
  end
  
end