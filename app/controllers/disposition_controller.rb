class DispositionController < ApplicationController
  skip_before_filter :authorize

  include QuestionGroupHelper

  def index
    @groups = QuestionGroup.where(:group_type => ["EDUCATION", "HEALTH"])
  end

  def save_answers
    answers = parse_answers(params)
    max_group = get_max_group(answers)
    
    survey = session[:survey]
    survey.answer_column = max_group
    survey.save

    save_survey_answers(answers, survey)
    
    redirect_to suggestion_url
  end

end
