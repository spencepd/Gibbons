class SurveyAnswer < ActiveRecord::Base
  belongs_to :question_group
  belongs_to :question
  belongs_to :question_answer
  belongs_to :survey
  attr_accessible :answer
end
