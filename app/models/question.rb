class Question < ActiveRecord::Base
  belongs_to :questionGroup
  has_many :questionAnswers
  attr_accessible :label, :question_type, :question_group_id
end
