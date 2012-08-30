class DispositionController < ApplicationController
  skip_before_filter :authorize

  def index
  end

  def save_answers
    if params[:fun]
      redirect_to suggestion_url
    else
      redirect_to admin_url
    end  
  end

end
