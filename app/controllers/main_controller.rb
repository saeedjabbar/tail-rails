class MainController < ApplicationController
  def index
    #create flash message
    flash.now[:notice] = "Logged in Successfully. Welcome to the app!"
    flash.now[:error] = "You are not authorized to view this page."
    flash.now[:alert] = "Invalid email or password."
  end
end