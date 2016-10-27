class AdminController < ApplicationController
  def login
	  if request.post?
		if params[:admin][:name] == "admin" && params[:admin][:password]=="nimda"
			session[:admin]="admin"
			flash[:notice] = "You are logged in"
			redirect_to :controller=>"books"
		else
			flash[:notice]="Invalid Username/ Password"
			render :action=>"login"
		end
          end		
  end
  
  def logout
	session[:admin]=nil
	flash[:notice]="You are logged out"
	redirect_to :action=>"login"
  end
end
