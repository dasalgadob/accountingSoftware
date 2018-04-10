class StaticPagesController < ApplicationController
  include SessionHelper
  def home
    if logged_in?
      redirect_to "/menu"
    end
  end

  def help
  end

  def about
    
  end

  def contact
    
  end

  def menu
    
  end

  def settings

  end
end
