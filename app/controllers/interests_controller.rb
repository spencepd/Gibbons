class InterestsController < ApplicationController
  skip_before_filter :authorize

  def index
  end

  def save_answers
    if params[:poor_education]
      redirect_to disposition_url
    else
      redirect_to admin_url
    end  
  end
end
