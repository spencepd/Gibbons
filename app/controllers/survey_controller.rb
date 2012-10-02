class SurveyController < ApplicationController
  skip_before_filter :authorize

  include QuestionGroupHelper

  def index
    @groups = QuestionGroup.where(:group_type => ["DISASTER", "EDUCATION"])
  end

  def show
  end
  
  def save_answers
    answers = parse_answers(params)
    
    survey = session[:survey]

    save_survey_answers(answers, survey)
    
    render 'survey/show'
  end
end
