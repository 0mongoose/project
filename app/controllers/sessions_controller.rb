class SessionsController < ApplicationController
  def new
    render :layout => nil
  end
  
  def create

    user = User.authenticate(params[:name], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to student_path(user.student), :notice => "Logged in " + current_user.name
      session[:login_time] = Time.now
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end



  def destroy
    student = current_user.student
    student.time = student.time + (Time.now - Time.new(session[:login_time]))
    student.save
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end


end

