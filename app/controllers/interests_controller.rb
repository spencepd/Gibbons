class InterestsController < ApplicationController
  skip_before_filter :authorize

  include QuestionGroupHelper
  
  def index
    # TODO: EXPIRE session 
    
    @groups = QuestionGroup.where(:group_type => ["EDUCATION", "HEALTH"])
  end

  def save_answers    
    answers = parse_answers(params)
    max_group = get_max_group(answers)
    
    session[:survey] = survey = Survey.create(:answer_row => max_group)

    save_survey_answers(answers, survey)
    
    redirect_to disposition_url
  end
end
