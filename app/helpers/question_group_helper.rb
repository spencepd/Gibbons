module QuestionGroupHelper
  
  def parse_answers(params)
    answers = []
    
    params.each do |key, value| 
      if key =~ /^q.*/
        answer = SurveyAnswer.new
        answer.answer = value
        key.split(/\./).each do |property_value|
          k,v = property_value.split(/:/)
          answer[k] = v
        end
        answers << answer
      end
    end
    
    answers
  end
  
  def get_max_group(answers)
    grouped = answers.group_by{|a| a.question_group_id}
    grouped.each {|k, v| grouped[k] = v.count }
    grouped.key(grouped.values.max)
  end
  
  def save_survey_answers(answers, survey)    
    answers.each do |a|
      a.survey_id = survey.id
      a.save()
    end
  end
  
end
