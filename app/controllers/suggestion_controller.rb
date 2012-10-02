class SuggestionController < ApplicationController
  skip_before_filter :authorize

  def index
    survey = session[:survey]
    puts "row is #{survey.answer_row}"
    puts "column is #{survey.answer_column}"
    
    @charities = Charity.all
  end
end
