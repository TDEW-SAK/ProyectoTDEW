class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    
    if session[:user_id]
      # Means our user is signed in. Add the authorization to the user
      User.find(session[:user_id]).add_provider(auth_hash)
      redirect_to :root
      #render :text => "You can now login using #{auth_hash["provider"].capitalize} too!"
    else
      # Log him in or sign him up
      auth = Authorization.find_or_create(auth_hash)
      
      # Create the session
      session[:user_id] = auth.user.id
      redirect_to :root
      #render :text => "Welcome #{auth.user.name}!"
    end
  end

  def failure
    #render :text => "Sorry, but you didn't allow access to our app!"
    redirect_to(:root, :notice => "No se tiene acceso a la aplicacion")
  end
  
  def destroy
    #session[:user_id] = nil
    reset_session
    auth_hash = nil
    #render :text => "You've logged out!"
    redirect_to :root
  end

end
