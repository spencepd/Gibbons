require 'test_helper'

class QuestionGroupTest < ActiveSupport::TestCase
  fixtures :question_groups
  
 test "question groups must not be empty" do
   questionGroup = QuestionGroup.new(label:  question_groups(:education).label,
                                     group_type:  question_groups(:education).group_type)
   assert questionGroup.valid?
   assert_equal("Education Label", questionGroup.label)
 end
end
