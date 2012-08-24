class QuestionAnswer < ActiveRecord::Base
  belongs_to :question
  attr_accessible :label
end
