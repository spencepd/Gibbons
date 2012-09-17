class QuestionGroup < ActiveRecord::Base 
  has_many :questions
  attr_accessible :group_type, :label
end
