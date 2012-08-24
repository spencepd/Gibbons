class Question < ActiveRecord::Base
  belongs_to :questionGroup
  attr_accessible :label, :question_type
end
