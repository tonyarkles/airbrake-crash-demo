class WelcomeController < ApplicationController
  
  def index
  end

  def boom
    raise "Boom"
  end
end
