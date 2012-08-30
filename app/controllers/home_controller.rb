class HomeController < ApplicationController
  skip_before_filter :authorize

  def index
  end
  
  def about_us
  end

  def contact_us
  end

  def terms_conditions
  end  
end
