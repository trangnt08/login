class StaticPagesController < ApplicationController
  def home
  	@title = "Home"
  end

  def help
  	@title = "Help"
  end
  def signup
  	@title = "Sign Up"
  end

  def login
  	@title = "Log in"
  end
end
